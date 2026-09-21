.class Lcom/ss/android/vesdk/jni/TEStikcerInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/nativePort/NativeCallbacks$OnARTextContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/jni/TEStikcerInterface;->getTextContent(Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/jni/TEStikcerInterface;Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)V
    .registers 3

    .line 442
    iput-object p1, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface$1;->this$0:Lcom/ss/android/vesdk/jni/TEStikcerInterface;

    iput-object p2, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface$1;->val$callback:Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([Ljava/lang/String;)V
    .registers 2

    .line 446
    iget-object p0, p0, Lcom/ss/android/vesdk/jni/TEStikcerInterface$1;->val$callback:Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;

    if-eqz p0, :cond_7

    .line 447
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;->onContentResult([Ljava/lang/String;)V

    :cond_7
    return-void
.end method
