.class public Lcom/ss/android/ttve/common/TEDefine$TEFilterAjustmentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/common/TEDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TEFilterAjustmentType"
.end annotation


# static fields
.field public static final INTENSITY_TYPE_ADJUSTMENT_BRIGHTNESS:I = 0x3e9

.field public static final INTENSITY_TYPE_ADJUSTMENT_COLOR_FADE:I = 0x3f1

.field public static final INTENSITY_TYPE_ADJUSTMENT_COLOR_TEMPERTURE:I = 0x3ef

.field public static final INTENSITY_TYPE_ADJUSTMENT_COLOR_TONE:I = 0x3f0

.field public static final INTENSITY_TYPE_ADJUSTMENT_CONTRAST:I = 0x3ea

.field public static final INTENSITY_TYPE_ADJUSTMENT_HIGH_LIGHT:I = 0x3ed

.field public static final INTENSITY_TYPE_ADJUSTMENT_SATURATION:I = 0x3eb

.field public static final INTENSITY_TYPE_ADJUSTMENT_SHADOW:I = 0x3ee

.field public static final INTENSITY_TYPE_ADJUSTMENT_SHARP:I = 0x3ec


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttve/common/TEDefine;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttve/common/TEDefine;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/ss/android/ttve/common/TEDefine$TEFilterAjustmentType;->this$0:Lcom/ss/android/ttve/common/TEDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
