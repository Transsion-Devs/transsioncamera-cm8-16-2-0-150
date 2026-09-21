.class Lcom/ss/android/vesdk/VEEditor$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VECommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor;->genReverseVideoWithEditor(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VEVideoEncodeSettings;ZLcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$allIVideoPath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

.field final synthetic val$needSeparateAudioPath:Z

.field final synthetic val$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

.field final synthetic val$reverseVideoPath:Ljava/lang/String;

.field final synthetic val$separateAudioPath:Ljava/lang/String;

.field final synthetic val$teReverseCallback:Lcom/ss/android/ttve/nativePort/TEReverseCallback;

.field final synthetic val$videoCompiler:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor;ZLjava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;Ljava/lang/String;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)V
    .registers 9

    .line 5090
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$videoCompiler:Lcom/ss/android/vesdk/VEEditor;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$needSeparateAudioPath:Z

    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$allIVideoPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$reverseVideoPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$teReverseCallback:Lcom/ss/android/ttve/nativePort/TEReverseCallback;

    iput-object p6, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$separateAudioPath:Ljava/lang/String;

    iput-object p7, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-object p8, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(IIFLjava/lang/String;)V
    .registers 5

    const/16 p2, 0x1007

    if-eq p1, p2, :cond_13

    const/16 p2, 0x1009

    if-eq p1, p2, :cond_9

    goto :goto_41

    .line 5126
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$teReverseCallback:Lcom/ss/android/ttve/nativePort/TEReverseCallback;

    float-to-double p1, p3

    const-wide/high16 p3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEReverseCallback;->onProgressChanged(D)V

    return-void

    .line 5096
    :cond_13
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$videoCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->isValid()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 5098
    iget-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$needSeparateAudioPath:Z

    if-eqz p1, :cond_29

    .line 5099
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$allIVideoPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$reverseVideoPath:Ljava/lang/String;

    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$teReverseCallback:Lcom/ss/android/ttve/nativePort/TEReverseCallback;

    invoke-static {p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->reverseAllIVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;)I

    goto :goto_34

    .line 5101
    :cond_29
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$allIVideoPath:Ljava/lang/String;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$separateAudioPath:Ljava/lang/String;

    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$reverseVideoPath:Ljava/lang/String;

    iget-object p4, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$teReverseCallback:Lcom/ss/android/ttve/nativePort/TEReverseCallback;

    invoke-static {p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->reverseAllIVideoAndMuxAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;)I

    .line 5104
    :goto_34
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/ss/android/vesdk/VEEditor$11$1;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/VEEditor$11$1;-><init>(Lcom/ss/android/vesdk/VEEditor$11;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5121
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_41
    :goto_41
    return-void
.end method
