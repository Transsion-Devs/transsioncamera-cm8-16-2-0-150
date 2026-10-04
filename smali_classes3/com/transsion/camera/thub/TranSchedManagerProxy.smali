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

.field private volatile mCaptureStateIsVip:Z

.field private volatile mDecodeBitmapIsVip:Z

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    .line 38
    iput v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    .line 70
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    .line 152
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    .line 181
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    .line 209
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mDecodeBitmapIsVip:Z

    .line 236
    iput-boolean v0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCaptureStateIsVip:Z

    .line 28
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

    .line 23
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelCamTranSched(I)V
    .registers 4

    .line 114
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    .line 116
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 118
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

    .line 120
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

    .line 275
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 276
    const-string p0, "Camera cancelDualVideoTranSched end."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 278
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

    .line 56
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    .line 58
    :try_start_7
    iget-object v2, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    iget v3, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTagsAsync(ILcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLThread uas boost end. tid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    .line 61
    iput v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLThread cancelTranSched fail exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    .line 65
    iput v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    :cond_43
    return-void
.end method

.method public cancelRendererRequestTranSched(I)V
    .registers 6

    .line 85
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    .line 87
    :try_start_7
    iget-object v2, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {v2, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 88
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    .line 89
    const-string p1, "RendererRequestThread uas boost end."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RendererRequestThread cancelTranSched fail exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    :cond_2b
    return-void
.end method

.method public cancelResponseTranSched(I)V
    .registers 4

    .line 140
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x0

    .line 142
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    .line 144
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

    .line 146
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

.method public cancelVipCaptureTranSched(I)V
    .registers 4

    .line 252
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCaptureStateIsVip:Z

    if-eqz v1, :cond_16

    .line 253
    iget-object v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {v1, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    const/4 p1, 0x0

    .line 254
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCaptureStateIsVip:Z

    .line 255
    const-string p0, "Camera cancelVipCaptureTranSched end."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p0

    goto :goto_17

    :cond_16
    return-void

    .line 259
    :goto_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera cancelVipCaptureTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cancelVipPauseTranSched(I)V
    .registers 4

    .line 197
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    if-eqz v1, :cond_16

    .line 198
    iget-object v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {v1, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    .line 200
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

    .line 204
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

    .line 168
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    if-eqz v1, :cond_16

    .line 169
    iget-object v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    invoke-virtual {v1, p1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->cancelTranSchedUxTags(I)Z

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    .line 171
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

    .line 175
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

    .line 102
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    .line 104
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCamIsVip:Z

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camlaunch"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 106
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

    .line 108
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

    .line 266
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camdualvideo"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 267
    const-string p0, "Camera setDualVideoTranSched start."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p0

    .line 269
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
    .registers 6

    .line 40
    const-string v0, "TranSchedManagerProxy"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GLThread"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    if-nez v1, :cond_55

    .line 42
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread uas boost start. tid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    iget v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    const-string/jumbo v2, "ux_exact_camlaunch"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByNameAsync(ILjava/lang/String;Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager$ITranSchedManagerCallback;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception p1

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread setTranSched fail exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLTid:I

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mGLIsVip:Z

    :cond_55
    return-void
.end method

.method public setRendererRequestTranSched(I)V
    .registers 5

    .line 72
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    .line 74
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    .line 75
    iget-object v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v2, "ux_exact_camlaunch"

    invoke-virtual {v1, p1, v2}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 76
    const-string p1, "RendererRequestThread uas boost start."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RendererRequestThread setTranSched fail exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mRendererRequestIsVip:Z

    :cond_2f
    return-void
.end method

.method public setResponseTranSched(I)V
    .registers 4

    .line 128
    const-string v0, "TranSchedManagerProxy"

    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    if-nez v1, :cond_3b

    const/4 v1, 0x1

    .line 130
    :try_start_7
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mResponseIsVip:Z

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camlaunch"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 132
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

    .line 134
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

.method public setVipCaptureTranSched(I)V
    .registers 4

    .line 239
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCaptureStateIsVip:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    .line 240
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mCaptureStateIsVip:Z

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camcapture"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 242
    const-string p0, "Camera setVipCaptureTranSched start."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    goto :goto_1a

    :cond_19
    return-void

    .line 246
    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera setVipCaptureTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVipDecodeBitmapTranSched(I)V
    .registers 4

    .line 212
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mDecodeBitmapIsVip:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    .line 213
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mDecodeBitmapIsVip:Z

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_campause"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 215
    const-string p0, "Camera setVipDecodeBitmapTranSched start."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    goto :goto_1a

    :cond_19
    return-void

    .line 219
    :goto_1a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera setVipDecodeBitmapTranSched fail exception: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVipPauseTranSched(I)V
    .registers 4

    .line 184
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    .line 185
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mPauseStateIsVip:Z

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_campause"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 187
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

    .line 191
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

    .line 155
    const-string v0, "TranSchedManagerProxy"

    :try_start_2
    iget-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    .line 156
    iput-boolean v1, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mIsVip:Z

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/thub/TranSchedManagerProxy;->mSchedManager:Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;

    const-string/jumbo v1, "ux_exact_camlaunch"

    invoke-virtual {p0, p1, v1}, Lcom/transsion/hubsdk/api/uiawarescheduling/TranSchedManager;->setTranSchedUxTagsByName(ILjava/lang/String;)Z

    .line 158
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

    .line 162
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
