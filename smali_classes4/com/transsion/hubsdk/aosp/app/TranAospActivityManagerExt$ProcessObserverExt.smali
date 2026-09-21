.class public Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;
.super Landroid/app/IProcessObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessObserverExt"
.end annotation


# instance fields
.field private processObserverExtInner:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;

.field final synthetic this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;)V
    .registers 3

    .line 146
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;->this$0:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;->processObserverExtInner:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4

    .line 157
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;->processObserverExtInner:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;->onForegroundActivitiesChanged(IIZ)V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    .line 162
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;->processObserverExtInner:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;->onForegroundServicesChanged(III)V

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    .line 167
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ProcessObserverExt;->processObserverExtInner:Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/app/TranAospActivityManagerExt$ITranProcessObserverExtInner;->onProcessDied(II)V

    return-void
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    return-void
.end method
