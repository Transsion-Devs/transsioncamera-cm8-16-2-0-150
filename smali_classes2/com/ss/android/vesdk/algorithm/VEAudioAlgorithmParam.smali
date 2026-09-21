.class public Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;
.super Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;
.source "SourceFile"


# static fields
.field public static final AUDIO_MIC_DETECT_DELAY_NAME:Ljava/lang/String; = "audio mic detect delay"

.field public static final AUDIO_MIC_LOUDNESS_DETECT_ALGORITHM:Ljava/lang/String; = "audio mic loudness detect"


# instance fields
.field private modelPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v0, p1, v1}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;-><init>(ILjava/lang/String;Z)V

    .line 27
    iput-object p2, p0, Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;->modelPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModelPath()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/ss/android/vesdk/algorithm/VEAudioAlgorithmParam;->modelPath:Ljava/lang/String;

    return-object p0
.end method
