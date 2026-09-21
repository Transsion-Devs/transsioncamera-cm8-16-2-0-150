.class public Lcom/ss/android/ttve/common/TEDefine$TEEffectAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/common/TEDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TEEffectAlgorithm"
.end annotation


# static fields
.field public static final TEAlgorithmType_Audio:I = 0x64

.field public static final TEAlgorithmType_Bach:I = 0x8

.field public static final TEAlgorithmType_Enigma_Detect:I = 0x7

.field public static final TEAlgorithmType_Express_Base_Detect:I = 0x1

.field public static final TEAlgorithmType_Face_Detect:I = 0x0

.field public static final TEAlgorithmType_Face_Detect_240:I = 0x4

.field public static final TEAlgorithmType_Face_Detect_280:I = 0x5

.field public static final TEAlgorithmType_Gender_Detect:I = 0x2

.field public static final TEAlgorithmType_Skeleton2:I = 0x3

.field public static final TEAlgorithmType_SmartBeauty:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/common/TEDefine;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/common/TEDefine;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/ss/android/ttve/common/TEDefine$TEEffectAlgorithm;->this$0:Lcom/ss/android/ttve/common/TEDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
