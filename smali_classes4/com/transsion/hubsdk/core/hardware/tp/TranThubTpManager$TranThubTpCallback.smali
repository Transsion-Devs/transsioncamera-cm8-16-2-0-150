.class Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;
.super Lcom/transsion/hubsdk/hardware/tp/ITranTpCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranThubTpCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;->this$0:Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager;

    invoke-direct {p0}, Lcom/transsion/hubsdk/hardware/tp/ITranTpCallback$Stub;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;->mCallback:Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 3

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/core/hardware/tp/TranThubTpManager$TranThubTpCallback;->mCallback:Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;

    if-eqz p0, :cond_7

    .line 89
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/hardware/tp/TranTpManager$TranTpCallback;->onEvent(ILjava/lang/String;)V

    :cond_7
    return-void
.end method
