.class public final synthetic Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TERecorder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TERecorder;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda4;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda4;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/TERecorder;->$r8$lambda$oT3EaAJzv4wcw1JhO5gOcZr28tE(Lcom/ss/android/vesdk/TERecorder;I)V

    return-void
.end method
