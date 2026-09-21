.class public final synthetic Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/vesdk/TERecorder;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/vesdk/TERecorder;[Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;->f$1:[Ljava/lang/String;

    iput p3, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;->f$0:Lcom/ss/android/vesdk/TERecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;->f$1:[Ljava/lang/String;

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder$$ExternalSyntheticLambda7;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/ss/android/vesdk/TERecorder;->$r8$lambda$vihkig_I0wwtGtfeBkPgKaYAkUA(Lcom/ss/android/vesdk/TERecorder;[Ljava/lang/String;I)V

    return-void
.end method
