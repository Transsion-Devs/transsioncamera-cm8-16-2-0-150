.class public Lcom/ss/android/vesdk/filterparam/VEAudioAECFilterParam;
.super Lcom/ss/android/vesdk/filterparam/VEBaseAudioFilterParam;
.source "SourceFile"


# instance fields
.field private modelPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEBaseAudioFilterParam;-><init>()V

    .line 11
    const-string v0, "audio acoustic echo cancellation filter"

    iput-object v0, p0, Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;->filterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/ss/android/vesdk/filterparam/VEAudioAECFilterParam;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ss/android/vesdk/filterparam/VEAudioAECFilterParam;->modelPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModelPath()Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/ss/android/vesdk/filterparam/VEAudioAECFilterParam;->modelPath:Ljava/lang/String;

    return-object p0
.end method
