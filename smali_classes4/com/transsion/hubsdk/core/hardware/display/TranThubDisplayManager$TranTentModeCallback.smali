.class public Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;
.super Lcom/transsion/hubsdk/hardware/display/ITranTentModeCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranTentModeCallback"
.end annotation


# instance fields
.field mTentModeCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;)V
    .registers 3

    .line 483
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/display/ITranTentModeCallback$Stub;-><init>()V

    .line 484
    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;->mTentModeCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;

    return-void
.end method


# virtual methods
.method public onTentStateChanged(I)V
    .registers 2

    .line 489
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManager$TranTentModeCallback;->mTentModeCallback:Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;

    if-eqz p0, :cond_7

    .line 490
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManager$ITranTentModeCallback;->onTentStateChanged(I)V

    :cond_7
    return-void
.end method
