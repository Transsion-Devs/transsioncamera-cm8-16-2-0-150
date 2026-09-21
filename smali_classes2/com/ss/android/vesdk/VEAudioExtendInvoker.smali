.class public Lcom/ss/android/vesdk/VEAudioExtendInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/internal/IVEAudioExtend;


# static fields
.field private static final TAG:Ljava/lang/String; = "VEEditor_VESmartBGMInvoker"


# instance fields
.field private final mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

.field mNativeProcessCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$AudioExtendToFileCallback;

.field private final mVEEditor:Lcom/ss/android/vesdk/VEEditor;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/VEEditor;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioExtendInvoker;->mVEEditor:Lcom/ss/android/vesdk/VEEditor;

    .line 22
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEEditor;->getInternalNativeEditor()Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEAudioExtendInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    return-void
.end method


# virtual methods
.method public beginAudioExtendToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;)I
    .registers 10

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioExtendToFile start from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " TO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ". Target to(seconds):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor_VESmartBGMInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioExtendInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/ttve/nativePort/TEInterface;->beginAudioExtendToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;)I

    move-result p0

    return p0
.end method

.method public cancelAudioExtendToFile()I
    .registers 3

    .line 45
    const-string v0, "VEEditor_VESmartBGMInvoker"

    const-string v1, "cancelAudioExtendToFile"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioExtendInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->cancelAudioExtendToFile()I

    move-result p0

    return p0
.end method

.method public initAudioExtendToFile()I
    .registers 4

    .line 27
    const-string v0, "initAudioExtendToFile"

    const-string v1, "VEEditor_VESmartBGMInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioExtendInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->initAudioExtendToFile()I

    move-result p0

    if-eqz p0, :cond_23

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAudioExtendToFile failed, ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public isAudioExtendToFileProcessing()Z
    .registers 3

    .line 57
    const-string v0, "VEEditor_VESmartBGMInvoker"

    const-string v1, "isAudioExtendToFileProcessing"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioExtendInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->isAudioExtendToFileProcessing()Z

    move-result p0

    return p0
.end method

.method public uninitAudioExtendToFile()I
    .registers 3

    .line 51
    const-string v0, "VEEditor_VESmartBGMInvoker"

    const-string v1, "uninitAudioExtendToFile"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAudioExtendInvoker;->mNativeEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->uninitAudioExtendToFile()I

    move-result p0

    return p0
.end method
