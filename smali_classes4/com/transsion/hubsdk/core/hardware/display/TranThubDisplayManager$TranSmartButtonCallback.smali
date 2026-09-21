.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;
.super Lcom/transsion/hubsdk/hardware/display/ITranSmartButtonCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranSmartButtonCallback"
.end annotation


# instance fields
.field private mTranSmartButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;)V
    .registers 3

    .line 678
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/display/ITranSmartButtonCallback$Stub;-><init>()V

    .line 679
    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;->mTranSmartButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 1

    .line 683
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranSmartButtonCallback;->mTranSmartButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;

    if-eqz p0, :cond_7

    .line 684
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranSmartButtonCallback;->onPress()V

    :cond_7
    return-void
.end method
