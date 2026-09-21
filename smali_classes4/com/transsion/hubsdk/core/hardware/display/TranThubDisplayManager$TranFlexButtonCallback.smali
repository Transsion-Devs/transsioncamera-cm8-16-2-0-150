.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;
.super Lcom/transsion/hubsdk/hardware/display/ITranFlexButtonCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranFlexButtonCallback"
.end annotation


# instance fields
.field private mTranFlexButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;)V
    .registers 3

    .line 544
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/display/ITranFlexButtonCallback$Stub;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;->mTranFlexButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;

    return-void
.end method


# virtual methods
.method public onKeyDown()V
    .registers 1

    .line 549
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;->mTranFlexButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;

    if-eqz p0, :cond_7

    .line 550
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;->onKeyDown()V

    :cond_7
    return-void
.end method

.method public onKeyUp()V
    .registers 1

    .line 556
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranFlexButtonCallback;->mTranFlexButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;

    if-eqz p0, :cond_7

    .line 557
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranFlexButtonCallback;->onKeyUp()V

    :cond_7
    return-void
.end method
