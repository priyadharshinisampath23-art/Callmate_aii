
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#100b20">
<title>CallMate AI</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    min-height: 100vh;
    background: #090711;
    color: white;
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
}

.app {
    width: 100%;
    max-width: 430px;
    min-height: 100vh;
    background: linear-gradient(160deg,#211532,#100b20);
    padding: 30px 22px;
    display: flex;
    flex-direction: column;
}

/* COMMON */

.brand {
    text-align: center;
    font-size: 27px;
    font-weight: bold;
    letter-spacing: 1px;
    margin: 20px 0 35px;
}

.purple {
    color: #c39aff;
}

.hidden {
    display: none !important;
}

button {
    cursor: pointer;
    border: none;
    color: white;
    font-weight: bold;
}

/* PAGE 1 */

#homePage {
    display: flex;
    flex-direction: column;
}

.heading {
    font-size: 23px;
    text-align: center;
    margin-bottom: 10px;
}

.description {
    color: #a99dbb;
    text-align: center;
    font-size: 14px;
    margin-bottom: 30px;
}

.topics {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 13px;
}

.topic {
    background: #2b203c;
    border: 1px solid #49365f;
    border-radius: 16px;
    padding: 20px 10px;
    text-align: center;
    color: #fff;
    font-size: 15px;
    transition: .2s;
}

.topic.selected {
    background: #7044a8;
    border: 1px solid #c49aff;
    box-shadow: 0 0 15px #a56bff55;
}

.custom-topic {
    width: 100%;
    background: #211831;
    color: white;
    border: 1px solid #49365f;
    border-radius: 13px;
    padding: 15px;
    margin-top: 18px;
    outline: none;
    font-size: 15px;
}

.mode {
    width: 100%;
    padding: 14px;
    background: #211831;
    color: white;
    border: 1px solid #49365f;
    border-radius: 13px;
    margin-top: 12px;
    font-size: 14px;
}

.continue {
    width: 100%;
    background: linear-gradient(120deg,#a66cff,#7042c5);
    padding: 17px;
    border-radius: 30px;
    margin-top: 25px;
    font-size: 16px;
}

/* PAGE 2 */

#callPage {
    display: flex;
    flex-direction: column;
    min-height: calc(100vh - 60px);
}

.call-header {
    text-align: center;
    padding-top: 30px;
}

.call-name {
    font-size: 29px;
    font-weight: bold;
    letter-spacing: 1px;
}

.call-time {
    font-size: 34px;
    margin-top: 35px;
    font-weight: 300;
    font-variant-numeric: tabular-nums;
}

.call-status {
    color: #bba6d8;
    font-size: 14px;
    margin-top: 12px;
}

.call-topic {
    color: #8f7ca7;
    font-size: 12px;
    margin-top: 8px;
}

.call-controls {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 30px 15px;
    margin: auto 0;
    padding: 50px 0;
}

.control {
    background: #302342;
    border: 1px solid #49375f;
    width: 76px;
    height: 76px;
    border-radius: 23px;
    margin: auto;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 6px;
    font-size: 23px;
}

.control small {
    font-size: 10px;
    font-weight: normal;
}

.control.active {
    background: #8b5bc1;
    border-color: #c7a0ff;
}

.end-area {
    display: flex;
    justify-content: center;
    padding-bottom: 35px;
}

.end-call {
    background: #e7475f;
    width: 76px;
    height: 76px;
    border-radius: 50%;
    font-size: 30px;
    transform: rotate(135deg);
}

.incoming-actions {
    display: flex;
    justify-content: center;
    gap: 65px;
    margin-top: 70px;
}

.answer {
    background: #20bd72;
    width: 75px;
    height: 75px;
    border-radius: 50%;
    font-size: 28px;
}

.decline {
    background: #e7475f;
    width: 75px;
    height: 75px;
    border-radius: 50%;
    font-size: 28px;
}

.keypad {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 12px;
    margin-top: 20px;
}

.key {
    padding: 15px;
    background: #302342;
    border-radius: 14px;
    font-size: 20px;
}

@media(min-width:500px) {
    body { padding: 20px; }
    .app {
        min-height: 850px;
        border: 1px solid #49365f;
        border-radius: 30px;
    }
}
</style>
</head>

<body>

<main class="app">

<!-- PAGE 1: HOME -->

<section id="homePage">

    <div class="brand">
        CallMate <span class="purple">AI</span>
    </div>

    <h2 class="heading">Choose Your Topic</h2>

    <p class="description">
        Select a conversation topic
    </p>

    <div class="topics">

        <button class="topic selected"
            onclick="selectTopic(this,'Daily Life')">
            Daily Life
        </button>

        <button class="topic"
            onclick="selectTopic(this,'College Life')">
            College Life
        </button>

        <button class="topic"
            onclick="selectTopic(this,'Friendship')">
            Friendship
        </button>

        <button class="topic"
            onclick="selectTopic(this,'Job Interview')">
            Job Interview
        </button>

        <button class="topic"
            onclick="selectTopic(this,'Travel')">
            Travel
        </button>

        <button class="topic"
            onclick="selectTopic(this,'Shopping')">
            Shopping
        </button>

        <button class="topic"
            onclick="selectTopic(this,'Confidence')">
            Confidence
        </button>

        <button class="topic"
            onclick="selectTopic(this,'Free Conversation')">
            Free Talk
        </button>

    </div>

    <input
        class="custom-topic"
        id="customTopic"
        placeholder="Enter your own topic"
    >

    <select class="mode" id="conversationMode">
        <option value="practice">English Practice</option>
        <option value="casual">Casual Conversation</option>
    </select>

    <button class="continue" onclick="startCall()">
        CONTINUE
    </button>

</section>


<!-- PAGE 2: CALLING SCREEN -->

<section id="callPage" class="hidden">

    <div class="call-header">

        <div class="call-name">
            CallMate <span class="purple">AI</span>
        </div>

        <div class="call-time" id="timer">
            00:00
        </div>

        <div class="call-status" id="status">
            Calling...
        </div>

        <div class="call-topic" id="topicCaption"></div>

    </div>

    <div class="call-controls">

        <button class="control" id="muteButton"
            onclick="toggleMute()">
            🎙️
            <small>Mute</small>
        </button>

        <button class="control"
            onclick="openKeypad()">
            ⌨️
            <small>Keypad</small>
        </button>

        <button class="control" id="speakerButton"
            onclick="toggleSpeaker()">
            🔊
            <small>Speaker</small>
        </button>

        <button class="control"
            onclick="addCall()">
            ＋
            <small>Add call</small>
        </button>

        <button class="control" id="holdButton"
            onclick="toggleHold()">
            ⏸️
            <small>Hold</small>
        </button>

        <button class="control"
            onclick="repeatVoice()">
            🔁
            <small>Repeat</small>
        </button>

    </div>

    <div class="end-area">
        <button class="end-call" onclick="endCall()">
            ☎
        </button>
    </div>

    <div id="keypadPanel" class="hidden">
        <div class="keypad">
            <button class="key" onclick="dial('1')">1</button>
            <button class="key" onclick="dial('2')">2</button>
            <button class="key" onclick="dial('3')">3</button>
            <button class="key" onclick="dial('4')">4</button>
            <button class="key" onclick="dial('5')">5</button>
            <button class="key" onclick="dial('6')">6</button>
            <button class="key" onclick="dial('7')">7</button>
            <button class="key" onclick="dial('8')">8</button>
            <button class="key" onclick="dial('9')">9</button>
            <button class="key" onclick="dial('*')">*</button>
            <button class="key" onclick="dial('0')">0</button>
            <button class="key" onclick="dial('#')">#</button>
        </div>
    </div>

</section>


<!-- INCOMING CALL SCREEN -->

<section id="incomingPage" class="hidden">

    <div class="call-header">
        <div class="call-name">
            CallMate <span class="purple">AI</span>
        </div>

        <div class="call-status" style="margin-top:45px">
            Incoming call
        </div>

        <div class="call-topic" id="incomingTopic"></div>
    </div>

    <div class="incoming-actions">

        <button class="decline" onclick="declineCall()">
            ✕
        </button>

        <button class="answer" onclick="answerCall()">
            ☎
        </button>

    </div>

</section>


<!-- CALL ENDED -->

<section id="endedPage" class="hidden">

    <div class="brand">
        CallMate <span class="purple">AI</span>
    </div>

    <h2 class="heading">Call Ended</h2>

    <p class="description" id="callSummary"></p>

    <button class="continue" onclick="goHome()">
        BACK TO HOME
    </button>

</section>

</main>


<script>

/* SETTINGS */

const AI_ENDPOINT = "/api/chat";

let selectedTopic = "Daily Life";
let conversationMode = "practice";

let seconds = 0;
let timerInterval = null;

let muted = false;
let held = false;
let speaker = true;

let recognition = null;
let lastAIResponse = "";


/* PAGE CONTROL */

function showPage(page) {

    ["homePage","callPage","incomingPage","endedPage"]
    .forEach(id => {
        document.getElementById(id).classList.add("hidden");
    });

    document.getElementById(page).classList.remove("hidden");
}


/* TOPIC SELECTION */

function selectTopic(button, topic) {

    document.querySelectorAll(".topic")
    .forEach(item => item.classList.remove("selected"));

    button.classList.add("selected");

    selectedTopic = topic;
}


/* START CALL */

function startCall() {

    const custom = document.getElementById("customTopic").value.trim();

    if(custom) {
        selectedTopic = custom;
    }

    conversationMode =
    document.getElementById("conversationMode").value;

    document.getElementById("incomingTopic").textContent =
    selectedTopic;

    showPage("incomingPage");
}


/* ANSWER */

function answerCall() {

    showPage("callPage");

    document.getElementById("topicCaption").textContent =
    selectedTopic;

    document.getElementById("status").textContent =
    "Connected";

    seconds = 0;

    updateTimer();

    timerInterval = setInterval(() => {

        if(!held) {
            seconds++;
            updateTimer();
        }

    },1000);

    speakAI("Hello! Welcome to CallMate AI. Let's talk about " +
    selectedTopic + ". How are you today?");

    startListening();
}


/* DECLINE */

function declineCall() {

    showPage("homePage");

}


/* TIMER */

function updateTimer() {

    let minutes = Math.floor(seconds / 60);
    let remaining = seconds % 60;

    document.getElementById("timer").textContent =
    String(minutes).padStart(2,"0") + ":" +
    String(remaining).padStart(2,"0");

}


/* VOICE OUTPUT */

function speakAI(text) {

    lastAIResponse = text;

    if(!speaker || !window.speechSynthesis) return;

    speechSynthesis.cancel();

    let speech = new SpeechSynthesisUtterance(text);

    speech.lang = "en-IN";
    speech.rate = 0.92;

    speechSynthesis.speak(speech);

}


/* VOICE INPUT */

function startListening() {

    const SpeechRecognition =
    window.SpeechRecognition ||
    window.webkitSpeechRecognition;

    if(!SpeechRecognition) {
        document.getElementById("status").textContent =
        "Voice input unavailable";
        return;
    }

    if(held || muted) return;

    recognition = new SpeechRecognition();

    recognition.lang = "en-IN";
    recognition.continuous = false;
    recognition.interimResults = false;

    recognition.onresult = function(event) {

        let message =
        event.results[0][0].transcript;

        sendToAI(message);

    };

    recognition.onend = function() {

        if(!held && !muted &&
           !document.getElementById("callPage").classList.contains("hidden")) {
            setTimeout(startListening,500);
        }

    };

    try {
        recognition.start();
    } catch(error) {}

}


/* STOP MICROPHONE */

function stopListening() {

    if(recognition) {
        try {
            recognition.onend = null;
            recognition.stop();
        } catch(error) {}
    }

}


/* AI CONNECTION */

async function sendToAI(message) {

    stopListening();

    document.getElementById("status").textContent =
    "Thinking...";

    try {

        const response = await fetch(AI_ENDPOINT, {

            method: "POST",

            headers: {
                "Content-Type": "application/json"
            },

            body: JSON.stringify({

                message: message,
                topic: selectedTopic,
                mode: conversationMode,
                language: "Tamil, Thanglish and English"

            })

        });

        if(!response.ok) {
            throw new Error("AI service unavailable");
        }

        const data = await response.json();

        if(!data.reply) {
            throw new Error("No reply received");
        }

        document.getElementById("status").textContent =
        "Connected";

        speakAI(data.reply);

    }

    catch(error) {

        document.getElementById("status").textContent =
        "AI connection required";

    }

    if(!held && !muted) {
        setTimeout(startListening,1000);
    }

}


/* MUTE */

function toggleMute() {

    muted = !muted;

    const button =
    document.getElementById("muteButton");

    button.classList.toggle("active",muted);

    button.innerHTML = muted
    ? "🔇<small>Unmute</small>"
    : "🎙️<small>Mute</small>";

    if(muted) {
        stopListening();
    } else if(!held) {
        startListening();
    }

}


/* SPEAKER */

function toggleSpeaker() {

    speaker = !speaker;

    const button =
    document.getElementById("speakerButton");

    button.classList.toggle("active",!speaker);

    button.innerHTML = speaker
    ? "🔊<small>Speaker</small>"
    : "🔈<small>Speaker Off</small>";

    if(!speaker && window.speechSynthesis) {
        speechSynthesis.cancel();
    }

}


/* HOLD AND RESUME */

function toggleHold() {

    held = !held;

    const button =
    document.getElementById("holdButton");

    button.classList.toggle("active",held);

    button.innerHTML = held
    ? "▶️<small>Resume</small>"
    : "⏸️<small>Hold</small>";

    if(held) {

        stopListening();

        if(window.speechSynthesis) {
            speechSynthesis.cancel();
        }

        document.getElementById("status").textContent =
        "On hold";

    } else {

        document.getElementById("status").textContent =
        "Connected";

        if(!muted) startListening();

    }

}


/* REPEAT */

function repeatVoice() {

    if(lastAIResponse) {
        speakAI(lastAIResponse);
    }

}


/* KEYPAD */

function openKeypad() {

    const panel =
    document.getElementById("keypadPanel");

    panel.classList.toggle("hidden");

}

function dial(number) {

    document.getElementById("status").textContent =
    "Key: " + number;

}


/* ADD CALL */

function addCall() {

    document.getElementById("status").textContent =
    "Second call is not available";

}


/* END CALL */

function endCall() {

    stopListening();

    if(window.speechSynthesis) {
        speechSynthesis.cancel();
    }

    clearInterval(timerInterval);

    document.getElementById("callSummary").textContent =
    "Call duration: " +
    Math.floor(seconds/60) + " minutes " +
    (seconds%60) + " seconds";

    showPage("endedPage");

}


/* HOME */

function goHome() {

    clearInterval(timerInterval);

    seconds = 0;
    held = false;
    muted = false;

    document.getElementById("keypadPanel")
    .classList.add("hidden");

    showPage("homePage");

}

</script>

</body>
</html>
