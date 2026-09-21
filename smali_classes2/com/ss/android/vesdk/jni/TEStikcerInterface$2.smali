.class Lcom/ss/android/vesdk/jni/TEStikcerInterface$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$OnARTextBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/jni/TEStikcerInterface;->setTextBitmapCallback(Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/jni/TEStikcerInterface;Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)V
    .registers 3

    .line 458
    iput-object p1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface$2;->this$0:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    iput-object p2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface$2;->val$callback:Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Lcom/ss/android/vesdk/model/BefTextLayout;)Lcom/ss/android/vesdk/model/BefTextLayoutResult;
    .registers 3

    .line 461
    iget-object p0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface$2;->val$callback:Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;

    if-eqz p0, :cond_9

    .line 462
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;->onBefTextLayoutResult(Ljava/lang/String;Lcom/ss/android/vesdk/model/BefTextLayout;)Lcom/ss/android/vesdk/model/BefTextLayoutResult;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
