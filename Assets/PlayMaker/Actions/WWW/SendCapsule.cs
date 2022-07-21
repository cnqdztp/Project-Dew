using System.Collections;
using UnityEngine;
using UnityEngine.Networking;

namespace HutongGames.PlayMaker.Actions
{

	[ActionCategory("WWW")]
	[Tooltip("used to send capsule information to server")]
	public class SendCapsule : FsmStateAction
	{
		[UIHint(UIHint.Variable)] [Tooltip("Name")]
		public FsmString thisName;
		[UIHint(UIHint.Variable)] [Tooltip("Phone number")]
		public FsmString phone;
		[UIHint(UIHint.Variable)] [Tooltip("Wish")]
		public FsmString wish;
		[Tooltip("Wish")]
		public FsmString url;
		[UIHint(UIHint.FsmBool)] [Tooltip("Wish")]
		public FsmBool resultStore;
		
		[Tooltip("Event to send after the specified time.")]
		public FsmEvent finishEvent;
		
		// Code that runs on entering the state.
		public override void OnEnter()
		{
			StartCoroutine(Upload());
			Finish();
		}

		IEnumerator Upload() {
			byte[] myData = System.Text.Encoding.UTF8.GetBytes(JsonUtility.ToJson(
				new Wish(){name = thisName.Value,phone = phone.Value,
					wishContent = wish.Value}
			));
			UnityWebRequest www = UnityWebRequest.Put(url.Value, myData);
			// Debug.Log("Starting");

			yield return www.SendWebRequest();
			// Debug.Log("Completed");
			
			// Debug.Log(www.result);
			
			resultStore.Value = www.result == UnityWebRequest.Result.Success;
			if (finishEvent != null)
			{
				Fsm.Event(finishEvent);
			}
		}
		public class Wish
		{
			public string name;
			public string phone;
			public string wishContent;
		}
	}

}
