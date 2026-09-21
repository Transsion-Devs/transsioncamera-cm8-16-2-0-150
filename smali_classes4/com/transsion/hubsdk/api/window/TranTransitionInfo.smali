.class public Lcom/transsion/hubsdk/api/window/TranTransitionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranTransitionInfo"


# instance fields
.field private mTranTransitionInfo:Lcom/transsion/hubsdk/window/TranTransitionInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;
    .registers 4

    if-eqz p1, :cond_2c

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    :try_start_7
    invoke-virtual {p1, v0, v1}, Landroid/window/TransitionInfo$Change;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/window/TranTransitionInfo;->getInstance()Lcom/transsion/hubsdk/window/TranTransitionInfo;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/window/TranTransitionInfo;->getChangeLeash(Landroid/os/Parcel;)Landroid/view/SurfaceControl;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1b
    .catchall {:try_start_7 .. :try_end_15} :catchall_19

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_19
    move-exception p0

    goto :goto_28

    :catch_1b
    move-exception p0

    .line 34
    :try_start_1c
    sget-object p1, Lcom/transsion/hubsdk/api/window/TranTransitionInfo;->TAG:Ljava/lang/String;

    const-string v1, "getChangeLeash error"

    invoke-static {p1, v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 p0, 0x0

    return-object p0

    :goto_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 37
    throw p0

    .line 25
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name or parent should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInstance()Lcom/transsion/hubsdk/window/TranTransitionInfo;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/transsion/hubsdk/api/window/TranTransitionInfo;->mTranTransitionInfo:Lcom/transsion/hubsdk/window/TranTransitionInfo;

    if-nez v0, :cond_b

    .line 18
    new-instance v0, Lcom/transsion/hubsdk/window/TranTransitionInfo;

    invoke-direct {v0}, Lcom/transsion/hubsdk/window/TranTransitionInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/window/TranTransitionInfo;->mTranTransitionInfo:Lcom/transsion/hubsdk/window/TranTransitionInfo;

    .line 20
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/api/window/TranTransitionInfo;->mTranTransitionInfo:Lcom/transsion/hubsdk/window/TranTransitionInfo;

    return-object p0
.end method
