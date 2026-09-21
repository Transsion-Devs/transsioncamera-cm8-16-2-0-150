.class Lcom/ss/android/vesdk/VEEditor$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEditor$11;->onCallback(IIFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEditor$11;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEditor$11;)V
    .registers 2

    .line 5104
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor$11$1;->this$0:Lcom/ss/android/vesdk/VEEditor$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5107
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$11$1;->this$0:Lcom/ss/android/vesdk/VEEditor$11;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$11;->val$videoCompiler:Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor;->destroy()V

    .line 5108
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor$11$1;->this$0:Lcom/ss/android/vesdk/VEEditor$11;

    iget-object v1, v0, Lcom/ss/android/vesdk/VEEditor$11;->val$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v2, v0, Lcom/ss/android/vesdk/VEEditor$11;->val$allIVideoPath:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 5109
    iget-boolean v2, v0, Lcom/ss/android/vesdk/VEEditor$11;->val$needSeparateAudioPath:Z

    if-eqz v2, :cond_1f

    .line 5110
    iget-object v2, v0, Lcom/ss/android/vesdk/VEEditor$11;->val$separateAudioPath:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    .line 5112
    :cond_1f
    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor$11;->val$reverseVideoPath:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 5113
    iput-boolean v0, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 5114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reverse compileDone: needSeparateAudioPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor$11$1;->this$0:Lcom/ss/android/vesdk/VEEditor$11;

    iget-boolean v1, v1, Lcom/ss/android/vesdk/VEEditor$11;->val$needSeparateAudioPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reverse compileDone: mOriginalSoundTrackType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor$11$1;->this$0:Lcom/ss/android/vesdk/VEEditor$11;

    iget-object v2, v2, Lcom/ss/android/vesdk/VEEditor$11;->val$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$11$1;->this$0:Lcom/ss/android/vesdk/VEEditor$11;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor$11;->val$listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    if-eqz p0, :cond_68

    const/4 v0, 0x0

    .line 5118
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;->onReverseDone(I)V

    :cond_68
    return-void
.end method
