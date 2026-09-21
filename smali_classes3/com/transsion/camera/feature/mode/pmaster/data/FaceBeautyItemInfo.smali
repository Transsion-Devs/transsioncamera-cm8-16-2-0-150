.class public Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FEATURE_AI:I = 0x2

.field public static final FEATURE_BROWN:I = 0xd

.field public static final FEATURE_CLOSE:I = 0x0

.field public static final FEATURE_COLD:I = 0xb

.field public static final FEATURE_CUTTING_FACE:I = 0x7

.field public static final FEATURE_EYE:I = 0x6

.field public static final FEATURE_FACE:I = 0x5

.field public static final FEATURE_FIVE_SENSES:I = 0xe

.field public static final FEATURE_HEAD:I = 0x9

.field public static final FEATURE_MUSCLE_CARE:I = 0xf

.field public static final FEATURE_NEUTRAL:I = 0xa

.field public static final FEATURE_NOSE:I = 0x8

.field public static final FEATURE_RESET:I = 0x1

.field public static final FEATURE_SOFTEN:I = 0x3

.field public static final FEATURE_WARM:I = 0xc

.field public static final FEATURE_WHITEN:I = 0x4


# instance fields
.field public final drawableId:I

.field public final featureId:I

.field public final key:Ljava/lang/String;

.field public final layoutId:I

.field public titleId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;III)V
    .registers 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->featureId:I

    .line 33
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->drawableId:I

    .line 35
    iput p4, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->layoutId:I

    .line 36
    iput p5, p0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;->titleId:I

    return-void
.end method
