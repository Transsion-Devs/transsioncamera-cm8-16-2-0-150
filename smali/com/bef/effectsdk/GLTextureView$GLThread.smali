.class Lcom/bef/effectsdk/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bef/effectsdk/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bef/effectsdk/GLTextureView;",
            ">;)V"
        }
    .end annotation

    .line 1055
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1595
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    .line 1056
    iput v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    .line 1057
    iput v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    .line 1058
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    .line 1059
    iput v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    .line 1060
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$1102(Lcom/bef/effectsdk/GLTextureView$GLThread;Z)Z
    .registers 2

    .line 1053
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 21

    move-object/from16 v1, p0

    .line 1104
    new-instance v0, Lcom/bef/effectsdk/GLTextureView$EglHelper;

    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    const/4 v0, 0x0

    .line 1105
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1106
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    move v4, v0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v3, 0x0

    :goto_1b
    const/4 v14, 0x0

    .line 1122
    :goto_1c
    :try_start_1c
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_29e

    .line 1124
    :goto_21
    :try_start_21
    iget-boolean v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1125
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/Runnable;

    move-object/from16 v18, v3

    const/4 v0, 0x0

    goto/16 :goto_277

    :catchall_3c
    move-exception v0

    goto/16 :goto_446

    .line 1129
    :cond_3f
    iget-boolean v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v2, :cond_5f

    .line 1130
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bef/effectsdk/GLTextureView;

    .line 1131
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView;->onExitContext()V

    .line 1132
    monitor-exit v15
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_3c

    .line 1398
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1399
    :try_start_54
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1400
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1401
    monitor-exit v2

    return-void

    :catchall_5c
    move-exception v0

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5c

    throw v0

    .line 1137
    :cond_5f
    :try_start_5f
    iget-boolean v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestPaused:Z

    if-eq v2, v0, :cond_99

    .line 1139
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    .line 1140
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1142
    const-string v2, "GLThread"

    move/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string v3, "mPaused is now "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v4

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_99
    move-object/from16 v18, v3

    move/from16 v19, v4

    const/16 v17, 0x0

    .line 1147
    :goto_9f
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v0, :cond_d2

    .line 1149
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because asked to tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bef/effectsdk/GLTextureView;

    .line 1152
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView;->onExitContext()V

    .line 1153
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1154
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v0, 0x0

    .line 1155
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    const/4 v11, 0x1

    :cond_d2
    if-eqz v7, :cond_e6

    .line 1161
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bef/effectsdk/GLTextureView;

    .line 1162
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView;->onExitContext()V

    .line 1163
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1164
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    const/4 v7, 0x0

    :cond_e6
    if-eqz v17, :cond_109

    .line 1169
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_109

    .line 1171
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL surface because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_109
    if-eqz v17, :cond_148

    .line 1177
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_148

    .line 1178
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bef/effectsdk/GLTextureView;

    if-nez v0, :cond_11b

    const/4 v0, 0x0

    goto :goto_11f

    .line 1180
    :cond_11b
    # getter for: Lcom/bef/effectsdk/GLTextureView;->mPreserveEGLContextOnPause:Z
    invoke-static {v0}, Lcom/bef/effectsdk/GLTextureView;->access$900(Lcom/bef/effectsdk/GLTextureView;)Z

    move-result v0

    :goto_11f
    if-eqz v0, :cond_12b

    .line 1181
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 1182
    :cond_12b
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1184
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releasing EGL context because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_148
    if-eqz v17, :cond_173

    .line 1191
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1192
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->finish()V

    .line 1194
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminating EGL because paused tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_173
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_1a9

    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_1a9

    .line 1202
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface lost tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_19c

    .line 1205
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_19c
    const/4 v0, 0x1

    .line 1207
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    .line 1208
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1209
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1213
    :cond_1a9
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1d5

    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_1d5

    .line 1215
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticed surfaceView surface acquired tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1217
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1218
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1d5
    if-eqz v10, :cond_1fd

    .line 1223
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1227
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1228
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1232
    :cond_1fd
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_3ac

    .line 1235
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-nez v0, :cond_231

    if-eqz v11, :cond_20d

    move/from16 v4, v19

    const/4 v11, 0x0

    goto :goto_233

    .line 1238
    :cond_20d
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/bef/effectsdk/GLTextureView$GLThread;)Z

    move-result v0
    :try_end_215
    .catchall {:try_start_5f .. :try_end_215} :catchall_3c

    if-eqz v0, :cond_231

    .line 1240
    :try_start_217
    iget-object v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->start()V
    :try_end_21c
    .catch Ljava/lang/RuntimeException; {:try_start_217 .. :try_end_21c} :catch_228
    .catchall {:try_start_217 .. :try_end_21c} :catchall_3c

    const/4 v0, 0x1

    .line 1245
    :try_start_21d
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1248
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x1

    goto :goto_233

    :catch_228
    move-exception v0

    .line 1242
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    .line 1243
    throw v0

    :cond_231
    move/from16 v4, v19

    .line 1252
    :goto_233
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_241

    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_241

    const/4 v0, 0x1

    .line 1253
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x1

    .line 1259
    :cond_241
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_3ae

    .line 1260
    iget-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_26d

    .line 1262
    iget v12, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    .line 1263
    iget v13, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    .line 1266
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noticing that we want render notification tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1266
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1274
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v5, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_26d
    const/4 v0, 0x0

    .line 1276
    iput-boolean v0, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    .line 1277
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1299
    :goto_277
    monitor-exit v15
    :try_end_278
    .catchall {:try_start_21d .. :try_end_278} :catchall_3c

    if-eqz v5, :cond_2ba

    .line 1303
    :try_start_27a
    const-string v2, "GLThread"

    const-string v3, "egl createSurface"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_2a1

    .line 1306
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_28e
    .catchall {:try_start_27a .. :try_end_28e} :catchall_29e

    const/4 v3, 0x1

    .line 1307
    :try_start_28f
    iput-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1308
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1309
    monitor-exit v2

    move v5, v0

    goto :goto_2ba

    :catchall_29b
    move-exception v0

    monitor-exit v2
    :try_end_29d
    .catchall {:try_start_28f .. :try_end_29d} :catchall_29b

    :try_start_29d
    throw v0

    :catchall_29e
    move-exception v0

    goto/16 :goto_448

    .line 1311
    :cond_2a1
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_2a6
    .catchall {:try_start_29d .. :try_end_2a6} :catchall_29e

    const/4 v3, 0x1

    .line 1312
    :try_start_2a7
    iput-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1313
    iput-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1314
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1315
    monitor-exit v2

    move-object/from16 v3, v18

    goto/16 :goto_1c

    :catchall_2b7
    move-exception v0

    monitor-exit v2
    :try_end_2b9
    .catchall {:try_start_2a7 .. :try_end_2b9} :catchall_2b7

    :try_start_2b9
    throw v0

    :cond_2ba
    :goto_2ba
    if-eqz v6, :cond_2ce

    .line 1322
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    .line 1324
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    move v6, v0

    move-object v3, v2

    goto :goto_2d0

    :cond_2ce
    move-object/from16 v3, v18

    :goto_2d0
    if-eqz v4, :cond_2ef

    .line 1330
    const-string v2, "GLThread"

    const-string v4, "onSurfaceCreated"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bef/effectsdk/GLTextureView;

    if-eqz v2, :cond_2ee

    .line 1334
    # getter for: Lcom/bef/effectsdk/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static {v2}, Lcom/bef/effectsdk/GLTextureView;->access$1000(Lcom/bef/effectsdk/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    iget-object v4, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    iget-object v4, v4, Lcom/bef/effectsdk/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_2ee
    move v4, v0

    :cond_2ef
    if-eqz v14, :cond_2f6

    .line 1340
    invoke-interface {v14}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_1b

    :cond_2f6
    if-eqz v8, :cond_32d

    .line 1347
    const-string v2, "GLThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onSurfaceChanged("

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bef/effectsdk/GLTextureView;

    if-eqz v2, :cond_32c

    .line 1351
    # getter for: Lcom/bef/effectsdk/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static {v2}, Lcom/bef/effectsdk/GLTextureView;->access$1000(Lcom/bef/effectsdk/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v3, v12, v13}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_32c
    move v8, v0

    .line 1357
    :cond_32d
    const-string v2, "GLThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDrawFrame tid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v4

    move v0, v5

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bef/effectsdk/GLTextureView;

    if-eqz v2, :cond_35b

    .line 1362
    # getter for: Lcom/bef/effectsdk/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static {v2}, Lcom/bef/effectsdk/GLTextureView;->access$1000(Lcom/bef/effectsdk/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1365
    :cond_35b
    iget-object v2, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->swap()I

    move-result v2

    const/16 v4, 0x3000

    if-eq v2, v4, :cond_380

    const/16 v4, 0x300e

    if-eq v2, v4, :cond_385

    .line 1380
    const-string v4, "GLThread"

    const-string v5, "eglSwapBuffers"

    invoke-static {v4, v5, v2}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1382
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2
    :try_end_375
    .catchall {:try_start_2b9 .. :try_end_375} :catchall_29e

    const/4 v4, 0x1

    .line 1383
    :try_start_376
    iput-boolean v4, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    .line 1384
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1385
    monitor-exit v2

    :cond_380
    move-object v15, v3

    goto :goto_3a2

    :catchall_382
    move-exception v0

    monitor-exit v2
    :try_end_384
    .catchall {:try_start_376 .. :try_end_384} :catchall_382

    :try_start_384
    throw v0

    :cond_385
    const/4 v4, 0x1

    .line 1371
    const-string v2, "GLThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "egl context lost tid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v15, v3

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a1
    .catchall {:try_start_384 .. :try_end_3a1} :catchall_29e

    const/4 v7, 0x1

    :goto_3a2
    if-eqz v9, :cond_3a5

    const/4 v10, 0x1

    :cond_3a5
    move v5, v0

    move-object v3, v15

    move/from16 v4, v17

    const/4 v0, 0x0

    goto/16 :goto_1c

    :cond_3ac
    move/from16 v4, v19

    .line 1284
    :cond_3ae
    :try_start_3ae
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waiting tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v4

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mHaveEglContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHaveEglSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFinishedCreatingEglSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPaused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mSurfaceIsBad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWaitingForSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestRender: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mRenderMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    move/from16 v4, v16

    move-object/from16 v3, v18

    const/4 v0, 0x0

    goto/16 :goto_21

    .line 1299
    :goto_446
    monitor-exit v15
    :try_end_447
    .catchall {:try_start_3ae .. :try_end_447} :catchall_3c

    :try_start_447
    throw v0
    :try_end_448
    .catchall {:try_start_447 .. :try_end_448} :catchall_29e

    .line 1398
    :goto_448
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1399
    :try_start_44d
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1400
    invoke-direct {v1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1401
    monitor-exit v2
    :try_end_454
    .catchall {:try_start_44d .. :try_end_454} :catchall_455

    .line 1402
    throw v0

    :catchall_455
    move-exception v0

    .line 1401
    :try_start_456
    monitor-exit v2
    :try_end_457
    .catchall {:try_start_456 .. :try_end_457} :catchall_455

    throw v0
.end method

.method private readyToDraw()Z
    .registers 3

    .line 1410
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_1e

    iget v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_1e

    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    if-ne p0, v1, :cond_1e

    :cond_1d
    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private stopEglContextLocked()V
    .registers 2

    .line 1097
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1098
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->finish()V

    const/4 v0, 0x0

    .line 1099
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1100
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .line 1086
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1087
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1088
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEglHelper:Lcom/bef/effectsdk/GLTextureView$EglHelper;

    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$EglHelper;->destroySurface()V

    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .line 1406
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->readyToDraw()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public getRenderMode()I
    .registers 2

    .line 1426
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1427
    :try_start_5
    iget p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v0

    return p0

    :catchall_9
    move-exception p0

    .line 1428
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public onPause()V
    .registers 6

    .line 1476
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1478
    :try_start_5
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1480
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1481
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1482
    :goto_29
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_4a

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_4a

    .line 1484
    const-string v1, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_40

    .line 1487
    :try_start_38
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3f} :catch_42
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    goto :goto_29

    :catchall_40
    move-exception p0

    goto :goto_4c

    .line 1489
    :catch_42
    :try_start_42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_29

    .line 1492
    :cond_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_40

    throw p0
.end method

.method public onResume()V
    .registers 6

    .line 1496
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1498
    :try_start_5
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1500
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    .line 1501
    iput-boolean v2, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    .line 1502
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1503
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1504
    :goto_2e
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_53

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_53

    .line 1506
    const-string v1, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_49

    .line 1509
    :try_start_41
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_48} :catch_4b
    .catchall {:try_start_41 .. :try_end_48} :catchall_49

    goto :goto_2e

    :catchall_49
    move-exception p0

    goto :goto_55

    .line 1511
    :catch_4b
    :try_start_4b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2e

    .line 1514
    :cond_53
    monitor-exit v0

    return-void

    :goto_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_49

    throw p0
.end method

.method public onWindowResize(II)V
    .registers 6

    .line 1518
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1519
    :try_start_5
    iput p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWidth:I

    .line 1520
    iput p2, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHeight:I

    const/4 p1, 0x1

    .line 1521
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mSizeChanged:Z

    .line 1522
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    .line 1523
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1524
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1527
    :goto_18
    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z

    if-nez p1, :cond_56

    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mPaused:Z

    if-nez p1, :cond_56

    iget-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_56

    .line 1528
    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->ableToDraw()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 1530
    const-string p1, "Main thread"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_4c

    .line 1533
    :try_start_44
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4b} :catch_4e
    .catchall {:try_start_44 .. :try_end_4b} :catchall_4c

    goto :goto_18

    :catchall_4c
    move-exception p0

    goto :goto_58

    .line 1535
    :catch_4e
    :try_start_4e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_18

    .line 1538
    :cond_56
    monitor-exit v0

    return-void

    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_4c

    throw p0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3

    if-eqz p1, :cond_18

    .line 1570
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1571
    :try_start_7
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1573
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p0

    .line 1568
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "r must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestExitAndWait()V
    .registers 3

    .line 1544
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1545
    :try_start_6
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldExit:Z

    .line 1546
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1547
    :goto_f
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_1b

    if-nez v1, :cond_25

    .line 1549
    :try_start_13
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1d
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_f

    :catchall_1b
    move-exception p0

    goto :goto_27

    .line 1551
    :catch_1d
    :try_start_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1554
    :cond_25
    monitor-exit v0

    return-void

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_1b

    throw p0
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    const/4 v0, 0x1

    .line 1558
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1559
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public requestRender()V
    .registers 3

    .line 1432
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 1433
    :try_start_6
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRequestRender:Z

    .line 1434
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1435
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public run()V
    .registers 4

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starting tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLThread"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :try_start_32
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->guardedRun()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_35} :catch_46
    .catchall {:try_start_32 .. :try_end_35} :catchall_3d

    .line 1077
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->threadExiting(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    return-void

    :catchall_3d
    move-exception v0

    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->threadExiting(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    .line 1078
    throw v0

    .line 1077
    :catch_46
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;->threadExiting(Lcom/bef/effectsdk/GLTextureView$GLThread;)V

    return-void
.end method

.method public setRenderMode(I)V
    .registers 3

    if-ltz p1, :cond_18

    const/4 v0, 0x1

    if-gt p1, v0, :cond_18

    .line 1419
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1420
    :try_start_a
    iput p1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mRenderMode:I

    .line 1421
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1422
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw p0

    .line 1417
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public surfaceCreated()V
    .registers 6

    .line 1439
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1441
    :try_start_5
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1443
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    .line 1444
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1445
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1446
    :goto_2c
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_4a

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_40

    if-nez v1, :cond_4a

    .line 1450
    :try_start_38
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3f
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_3f} :catch_42
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    goto :goto_2c

    :catchall_40
    move-exception p0

    goto :goto_4c

    .line 1452
    :catch_42
    :try_start_42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2c

    .line 1455
    :cond_4a
    monitor-exit v0

    return-void

    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_40

    throw p0
.end method

.method public surfaceDestroyed()V
    .registers 6

    .line 1459
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1461
    :try_start_5
    const-string v1, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1463
    iput-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mHasSurface:Z

    .line 1464
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1465
    :goto_29
    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_43

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView$GLThread;->mExited:Z
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_39

    if-nez v1, :cond_43

    .line 1467
    :try_start_31
    # getter for: Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    invoke-static {}, Lcom/bef/effectsdk/GLTextureView;->access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_38} :catch_3b
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    goto :goto_29

    :catchall_39
    move-exception p0

    goto :goto_45

    .line 1469
    :catch_3b
    :try_start_3b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_29

    .line 1472
    :cond_43
    monitor-exit v0

    return-void

    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3b .. :try_end_46} :catchall_39

    throw p0
.end method
