.class Lcom/ss/android/vesdk/VEEffect$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VELandMarkDetectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VEEffect;->addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VEEffect;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEEffect;)V
    .registers 2

    .line 885
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEffect$3;->this$0:Lcom/ss/android/vesdk/VEEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLandMark(Z)V
    .registers 3

    .line 888
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEffect$3;->this$0:Lcom/ss/android/vesdk/VEEffect;

    # getter for: Lcom/ss/android/vesdk/VEEffect;->mMarkDetectListeners:Ljava/util/List;
    invoke-static {p0}, Lcom/ss/android/vesdk/VEEffect;->access$100(Lcom/ss/android/vesdk/VEEffect;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/VELandMarkDetectListener;

    .line 889
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/VELandMarkDetectListener;->onLandMark(Z)V

    goto :goto_a

    :cond_1a
    return-void
.end method
