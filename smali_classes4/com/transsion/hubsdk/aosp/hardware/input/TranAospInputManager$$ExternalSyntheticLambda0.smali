.class public final synthetic Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/aosp/hardware/input/TranInputMonitorImplExt$ITranTouchEventHandler;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    return-void
.end method


# virtual methods
.method public final handleInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/aosp/hardware/input/TranAospInputManager;->$r8$lambda$akiJbCU4f_kuFh8sy9cfg5EYxZk(Lcom/transsion/hubsdk/api/view/ITranTouchEventHandler;Landroid/view/InputEvent;)V

    return-void
.end method
