.class public Lcom/ss/android/ttve/nativePort/TEReverseCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/ss/android/ttve/nativePort/TEReverseCallback;->listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    return-void
.end method


# virtual methods
.method public onProgressChanged(D)V
    .registers 3

    .line 12
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TEReverseCallback;->listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    if-eqz p0, :cond_7

    .line 13
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;->onReverseProgress(D)V

    :cond_7
    return-void
.end method

.method public setListener(Ljava/lang/Object;)V
    .registers 2

    .line 18
    check-cast p1, Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TEReverseCallback;->listener:Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;

    return-void
.end method
