.class public Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field interruptSignal:Z

.field language:Ljava/lang/String;

.field offlineVoice:Ljava/lang/String;

.field onlineVoice:Ljava/lang/String;

.field outVoice:Ljava/lang/String;

.field requestID:Ljava/lang/String;

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->text:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->language:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->outVoice:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->interruptSignal:Z

    .line 6
    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->onlineVoice:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->offlineVoice:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInterruptSignal()Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->interruptSignal:Z

    return p0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->language:Ljava/lang/String;

    return-object p0
.end method

.method public getOfflineVoice()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->offlineVoice:Ljava/lang/String;

    return-object p0
.end method

.method public getOnlineVoice()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->onlineVoice:Ljava/lang/String;

    return-object p0
.end method

.method public getOutVoice()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->outVoice:Ljava/lang/String;

    return-object p0
.end method

.method public getRequestID()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->requestID:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->text:Ljava/lang/String;

    return-object p0
.end method

.method public setInterruptSignal(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->interruptSignal:Z

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->language:Ljava/lang/String;

    return-void
.end method

.method public setOfflineVoice(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->offlineVoice:Ljava/lang/String;

    return-void
.end method

.method public setOnlineVoice(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->onlineVoice:Ljava/lang/String;

    return-void
.end method

.method public setOutVoice(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->outVoice:Ljava/lang/String;

    return-void
.end method

.method public setRequestID(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->requestID:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/AISpeechInputBean;->text:Ljava/lang/String;

    return-void
.end method
