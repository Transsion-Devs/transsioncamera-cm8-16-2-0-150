.class public Lcom/transsion/hubsdk/api/os/TranLooper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospLooper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService()Lcom/transsion/hubsdk/interfaces/os/ITranLooperAdapter;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/transsion/hubsdk/api/os/TranLooper;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospLooper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospLooper;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospLooper;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/os/TranLooper;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospLooper;

    :cond_b
    return-object v0
.end method

.method public setTraceTag(Landroid/os/Looper;J)V
    .registers 4

    if-eqz p1, :cond_a

    .line 21
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/os/TranLooper;->getService()Lcom/transsion/hubsdk/interfaces/os/ITranLooperAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranLooperAdapter;->setTraceTag(Landroid/os/Looper;J)V

    return-void

    .line 19
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Looper cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
