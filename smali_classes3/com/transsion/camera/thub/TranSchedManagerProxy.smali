.class public Lcom/transsion/camera/thub/TranSchedManagerProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/thub/TranSchedManagerProxy$InstanceHolder;
    }
.end annotation


# instance fields
.field private volatile mCamIsVip:Z

.field private volatile mGLIsVip:Z

.field private volatile mGLTid:I

.field private volatile mIsVip:Z

.field private volatile mPauseStateIsVip:Z

.field private volatile mRendererRequestIsVip:Z

.field private volatile mResponseIsVip:Z

.field private mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    .line 37
    iput v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    .line 69
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    .line 98
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    .line 180
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    .line 27
    new-instance v0, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/thub/TranSchedManagerProxy-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;
    .registers 1

    .line 22
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelCamTranSched(I)V
    .registers 4

    .line 113
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    .line 115
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCamTranSched uas boost end. tid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCamTranSched cancelTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method

.method public cancelDualVideoTranSched(I)V
    .registers 4

    .line 219
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 220
    const-string p0, "Camera cancelDualVideoTranSched end."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera cancelDualVideoTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelGLTranSched()V
    .registers 6

    .line 55
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    if-eqz v1, :cond_42

    const/4 v1, 0x0

    .line 57
    :try_start_7
    iget-object v2, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    iget v3, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    invoke-virtual {v2, v3}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLThread uas boost end. tid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    .line 60
    iput v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLThread cancelTranSched fail exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    .line 64
    iput v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    :cond_42
    return-void
.end method

.method public cancelRendererRequestTranSched(I)V
    .registers 6

    .line 84
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    .line 86
    :try_start_7
    iget-object v2, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {v2, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 87
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    .line 88
    const-string p1, "RendererRequestThread uas boost end."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RendererRequestThread cancelTranSched fail exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    :cond_2b
    return-void
.end method

.method public cancelResponseTranSched(I)V
    .registers 4

    .line 139
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    .line 141
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelResponseTranSched uas boost end. tid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelResponseTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method

.method public cancelVipPauseTranSched(I)V
    .registers 4

    .line 196
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    if-eqz v1, :cond_16

    .line 197
    iget-object v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {v1, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    .line 199
    const-string p0, "Camera cancelVipPauseTranSched end."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    goto :goto_17

    :cond_16
    return-void

    .line 203
    :goto_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera cancelVipPauseTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelVipTranSched(I)V
    .registers 4

    .line 167
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    if-eqz v1, :cond_16

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {v1, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    .line 170
    const-string p0, "Camera Setting cancelVipTranSched end."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    goto :goto_17

    :cond_16
    return-void

    .line 174
    :goto_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera Setting cancelVipTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCamTranSched(I)V
    .registers 4

    .line 101
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    .line 103
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camlaunch"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCamTranSched uas boost start. tid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCamTranSched setTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method public setDualVideoTranSched(I)V
    .registers 4

    .line 210
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camdualvideo"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 211
    const-string p0, "Camera setDualVideoTranSched start."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera setDualVideoTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setGLTranSched(I)V
    .registers 5

    .line 39
    const-string v0, "TranSchedManagerProxy"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GLThread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    if-nez v1, :cond_54

    .line 41
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread uas boost start. tid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    iget v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    const-string/jumbo v2, "ux_exact_camlaunch"

    invoke-virtual {p1, v1, v2}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception p1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread setTranSched fail exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    .line 48
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    :cond_54
    return-void
.end method

.method public setRendererRequestTranSched(I)V
    .registers 5

    .line 71
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    .line 73
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    .line 74
    iget-object v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v2, "ux_exact_camlaunch"

    invoke-virtual {v1, p1, v2}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 75
    const-string p1, "RendererRequestThread uas boost start."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RendererRequestThread setTranSched fail exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    :cond_2f
    return-void
.end method

.method public setResponseTranSched(I)V
    .registers 4

    .line 127
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    .line 129
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camlaunch"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResponseTranSched uas boost start. tid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResponseTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method public setVipPauseTranSched(I)V
    .registers 4

    .line 183
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    .line 184
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_campause"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 186
    const-string p0, "Camera setVipPauseTranSched start."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    goto :goto_1a

    :cond_19
    return-void

    .line 190
    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera setVipPauseTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVipTranSched(I)V
    .registers 4

    .line 154
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    .line 155
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camlaunch"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 157
    const-string p0, "Camera Setting setVipTranSched start."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    goto :goto_1a

    :cond_19
    return-void

    .line 161
    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera Setting cancelTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
