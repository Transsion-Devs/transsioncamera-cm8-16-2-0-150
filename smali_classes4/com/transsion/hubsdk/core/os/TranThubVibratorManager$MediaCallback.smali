.class Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/os/ITranMediaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaCallback"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;->this$0:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;->mCallback:Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;->this$0:Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;

    # getter for: Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;
    invoke-static {v0}, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->access$000(Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;)Lcom/transsion/hubsdk/os/TranVibrator;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 88
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;->mCallback:Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;

    invoke-interface {p0}, Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method
