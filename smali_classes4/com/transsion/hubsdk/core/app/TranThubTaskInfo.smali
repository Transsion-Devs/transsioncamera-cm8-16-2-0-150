.class public Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranTaskInfoAdapter;


# instance fields
.field private mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/transsion/hubsdk/app/TranTaskInfo;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranTaskInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;->mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;

    return-void
.end method


# virtual methods
.method public getDisplayId(Landroid/app/TaskInfo;)I
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;->mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;

    if-eqz p0, :cond_9

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranTaskInfo;->getDisplayId(Landroid/app/TaskInfo;)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getSupportsMultiWindow(Landroid/app/TaskInfo;)Z
    .registers 2

    .line 25
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;->mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;

    if-eqz p0, :cond_9

    .line 26
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranTaskInfo;->getSupportsMultiWindow(Landroid/app/TaskInfo;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getUserId(Landroid/app/TaskInfo;)I
    .registers 2

    .line 17
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubTaskInfo;->mTranTaskInfo:Lcom/transsion/hubsdk/app/TranTaskInfo;

    if-eqz p0, :cond_9

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/app/TranTaskInfo;->getUserId(Landroid/app/TaskInfo;)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
