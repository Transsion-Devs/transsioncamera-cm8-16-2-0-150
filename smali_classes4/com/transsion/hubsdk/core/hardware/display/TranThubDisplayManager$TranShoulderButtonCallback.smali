.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;
.super Lcom/transsion/hubsdk/hardware/display/ITranShoulderButtonCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranShoulderButtonCallback"
.end annotation


# instance fields
.field private mTranShoulderButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;)V
    .registers 3

    .line 661
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/display/ITranShoulderButtonCallback$Stub;-><init>()V

    .line 662
    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;->mTranShoulderButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;

    return-void
.end method


# virtual methods
.method public onKeyEvent(IIIII)V
    .registers 6

    .line 667
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranShoulderButtonCallback;->mTranShoulderButtonCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;

    if-eqz p0, :cond_7

    .line 668
    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranShoulderButtonCallback;->onKeyEvent(IIIII)V

    :cond_7
    return-void
.end method
