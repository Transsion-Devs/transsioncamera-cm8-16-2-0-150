.class public final Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils;->getReverseVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $audioPath:Ljava/lang/String;

.field final synthetic $onProgress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $onResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

.field final synthetic $reversePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ss/android/vesdk/runtime/VEEditorResManager;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$audioPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-object p3, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$reversePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$onResult:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$onProgress:Lkotlin/jvm/functions/Function1;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReverseDone(I)V
    .registers 5

    if-nez p1, :cond_4d

    .line 65
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$audioPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/audio_reverse.mp4"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$audioPath:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VEUtils;->reverseAudio(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    aget-object v1, v2, v1

    .line 72
    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$reversePath:Ljava/lang/String;

    .line 69
    invoke-static {v1, v0, v2}, Lcom/ss/android/vesdk/VEUtils;->mux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 75
    :cond_2d
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$reversePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 76
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$resManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$reversePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_52

    .line 80
    :cond_4d
    iget-object v0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$reversePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/vesdk/VEFileUtils;->deleteFile(Ljava/lang/String;)V

    .line 82
    :goto_52
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$onResult:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onReverseProgress(D)V
    .registers 3

    .line 86
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/VEEditorUtils$getReverseVideo$1;->$onProgress:Lkotlin/jvm/functions/Function1;

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
