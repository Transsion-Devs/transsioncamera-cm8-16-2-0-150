.class Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VEEditorMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    .line 358
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1005

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b2

    const/16 v1, 0x1007

    if-eq v0, v1, :cond_7f

    const/16 v1, 0x1009

    if-eq v0, v1, :cond_65

    const/16 v1, 0x1015

    if-eq v0, v1, :cond_49

    const/16 v1, 0x1025

    if-eq v0, v1, :cond_33

    const/16 v1, 0x103d

    if-eq v0, v1, :cond_1d

    goto/16 :goto_c9

    .line 404
    :cond_1d
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$1200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 405
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$1200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;->onDisplayCallback(II)V

    return-void

    .line 371
    :cond_33
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$800(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 372
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$800(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;->onRefresh(II)V

    return-void

    .line 398
    :cond_49
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    move-result-object p1

    if-eqz p1, :cond_c9

    .line 399
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$1400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    move-result-object v3

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/vesdk/VEListener$VEGetImageListener;->onGetImageData([BIIIF)I

    .line 400
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;
    invoke-static {p0, v2}, Lcom/ss/android/vesdk/VEEditor;->access$1402(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEGetImageListener;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    return-void

    .line 393
    :cond_65
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 394
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;->onCompileProgress(F)V

    return-void

    .line 376
    :cond_7f
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 384
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-gez v0, :cond_a3

    .line 385
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_9a

    const-string p1, ""

    goto :goto_9e

    :cond_9a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9e
    const/4 v3, 0x0

    invoke-interface {v0, v1, v1, v3, p1}, Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;->onCompileError(IIFLjava/lang/String;)V

    goto :goto_ac

    .line 387
    :cond_a3
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;->onCompileDone()V

    .line 389
    :goto_ac
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    invoke-static {p0, v2}, Lcom/ss/android/vesdk/VEEditor;->access$402(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    return-void

    .line 365
    :cond_b2
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$700(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    move-result-object p1

    if-eqz p1, :cond_c9

    .line 366
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # getter for: Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;
    invoke-static {p1}, Lcom/ss/android/vesdk/VEEditor;->access$700(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;->onSeekDone(I)V

    .line 367
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;->this$0:Lcom/ss/android/vesdk/VEEditor;

    # setter for: Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;
    invoke-static {p0, v2}, Lcom/ss/android/vesdk/VEEditor;->access$702(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    :cond_c9
    :goto_c9
    return-void
.end method
