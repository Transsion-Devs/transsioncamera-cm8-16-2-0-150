.class Lcom/ss/android/vesdk/VEEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/common/TECommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .registers 11

    const-wide/16 v0, 0x0

    .line 205
    const-string v2, "VEEditor"

    const/16 v3, 0x1005

    if-eq p1, v3, :cond_20c

    const/16 v3, 0x1007

    if-eq p1, v3, :cond_19a

    const/16 v3, 0x1009

    if-eq p1, v3, :cond_161

    const/16 v3, 0x1021

    if-eq p1, v3, :cond_148

    const/16 v0, 0x103d

    if-eq p1, v0, :cond_122

    const/16 v0, 0x1025

    if-eq p1, v0, :cond_fc

    const/16 v0, 0x1026

    if-eq p1, v0, :cond_f6

    const/16 v0, 0x1030

    const-string v1, "TECommonCallback type:"

    if-eq p1, v0, :cond_c0

    const/16 v0, 0x1031

    if-eq p1, v0, :cond_8a

    const/16 v0, 0x1040

    if-eq p1, v0, :cond_70

    const/16 v0, 0x1041

    if-eq p1, v0, :cond_56

    .line 314
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_253

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    return-void

    .line 309
    :cond_56
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$000(Lcom/ss/android/vesdk/VEEditor;)Z

    move-result p1

    if-eqz p1, :cond_253

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    move-result-object p1

    if-eqz p1, :cond_253

    .line 310
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setRawDataHeight(I)V

    return-void

    .line 303
    :cond_70
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$000(Lcom/ss/android/vesdk/VEEditor;)Z

    move-result p1

    if-eqz p1, :cond_253

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    move-result-object p1

    if-eqz p1, :cond_253

    .line 304
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setRawDataWidth(I)V

    return-void

    .line 286
    :cond_8a
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$1100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 287
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$1100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;->onReleaseEngineUnitResourceError(I)V

    return-void

    .line 288
    :cond_9c
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_253

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    return-void

    .line 278
    :cond_c0
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$1100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    move-result-object v0

    if-eqz v0, :cond_d2

    .line 279
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$1100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;->onReleaseEngineUnitResourceSuccess()V

    return-void

    .line 280
    :cond_d2
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_253

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    return-void

    .line 275
    :cond_f6
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mPlayFps:F
    invoke-static {p0, p3}, Lcom/ss/android/vesdk/VEEditor;->access$1002(Lcom/ss/android/vesdk/VEEditor;F)F

    return-void

    .line 260
    :cond_fc
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$800(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    move-result-object p1

    if-eqz p1, :cond_253

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p1

    if-eqz p1, :cond_253

    .line 261
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 262
    iput v0, p1, Landroid/os/Message;->what:I

    .line 263
    iput p2, p1, Landroid/os/Message;->arg1:I

    float-to-int p2, p3

    .line 264
    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 265
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 294
    :cond_122
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    move-result-object p1

    if-eqz p1, :cond_253

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p1

    if-eqz p1, :cond_253

    .line 295
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 296
    iput v0, p1, Landroid/os/Message;->what:I

    .line 297
    iput p2, p1, Landroid/os/Message;->arg1:I

    float-to-int p2, p3

    .line 298
    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 299
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 269
    :cond_148
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$900(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-nez p1, :cond_253

    .line 270
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J
    invoke-static {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->access$902(Lcom/ss/android/vesdk/VEEditor;J)J

    .line 271
    const-string p0, "TECommonCallback TE_INFO_FIRST_FRAME_WITHOUT_SURFACE"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 229
    :cond_161
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    if-eqz v0, :cond_188

    .line 230
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 231
    iput p1, p2, Landroid/os/Message;->what:I

    .line 232
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 234
    :cond_188
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_253

    .line 235
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    return-void

    .line 207
    :cond_19a
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$000(Lcom/ss/android/vesdk/VEEditor;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 208
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setCallback(Lcom/ss/android/vesdk/VECommonCallback;)V

    .line 209
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;
    invoke-static {p2}, Lcom/ss/android/vesdk/VEEditor;->access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 210
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    const/4 p1, 0x0

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->access$002(Lcom/ss/android/vesdk/VEEditor;Z)Z

    return-void

    .line 213
    :cond_1c6
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # invokes: Lcom/ss/android/vesdk/VEEditor;->onMonitorCompile(I)V
    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VEEditor;->access$300(Lcom/ss/android/vesdk/VEEditor;I)V

    .line 216
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_1f5

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    if-eqz v0, :cond_1f5

    .line 217
    const-string p1, "mCompileListener TE_INFO_COMPILE_DONE"

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 219
    iput v3, p1, Landroid/os/Message;->what:I

    .line 220
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 221
    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 223
    :cond_1f5
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_253

    .line 224
    const-string v0, "TECommonCallback TE_INFO_COMPILE_DONE"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    return-void

    .line 239
    :cond_20c
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J
    invoke-static {v4}, Lcom/ss/android/vesdk/VEEditor;->access$600(Lcom/ss/android/vesdk/VEEditor;)J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_21e

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$600(Lcom/ss/android/vesdk/VEEditor;)J

    .line 251
    :cond_21e
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$700(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    move-result-object v0

    if-eqz v0, :cond_23d

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object v0

    if-eqz v0, :cond_23d

    .line 252
    const-string p1, "mSeekListener TE_INFO_SEEK_DONE"

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 254
    :cond_23d
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object v0

    if-eqz v0, :cond_253

    .line 255
    const-string v0, "TECommonCallback TE_INFO_SEEK_DONE"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$1;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_253
    return-void
.end method
