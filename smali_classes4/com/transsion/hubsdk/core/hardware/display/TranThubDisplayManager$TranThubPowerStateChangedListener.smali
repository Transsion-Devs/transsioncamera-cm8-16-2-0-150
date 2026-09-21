.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;
.super Lcom/transsion/hubsdk/hardware/display/ITranPowerStateChangedCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubPowerStateChangedListener"
.end annotation


# instance fields
.field mCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;)V
    .registers 3

    .line 720
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;->this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/display/ITranPowerStateChangedCallback$Stub;-><init>()V

    .line 721
    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;->mCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;

    return-void
.end method


# virtual methods
.method public onColorFadeSateChanged(I)V
    .registers 2

    .line 733
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;->mCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;

    if-eqz p0, :cond_7

    .line 734
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;->onColorFadeSateChanged(I)V

    :cond_7
    return-void
.end method

.method public onPowerModeAndBrightnessChanged(IF)V
    .registers 3

    .line 726
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranThubPowerStateChangedListener;->mCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;

    if-eqz p0, :cond_7

    .line 727
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$TranPowerStateChangedCallback;->onPowerModeAndBrightnessChanged(IF)V

    :cond_7
    return-void
.end method
