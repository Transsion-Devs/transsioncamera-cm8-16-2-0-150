.class public interface abstract Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;,
        Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;
    }
.end annotation


# static fields
.field public static final CUSTOM_KEY_ARRAY:[Ljava/lang/String;

.field public static final FEATURES:[Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 113
    const-string v7, "five_senses"

    const-string v8, "muscle_care"

    const-string v0, "soften"

    const-string v1, "eye"

    const-string v2, "face"

    const-string/jumbo v3, "whiten"

    const-string v4, "head"

    const-string v5, "cuttingface"

    const-string v6, "nose"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    .line 131
    sget-object v1, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SKINSOFTEN:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v2, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->EYE_LARGER:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v3, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->FACE_THINNER:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v4, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SKINCOLOR:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v5, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->HEAD_SMALLER:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v6, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->MANDIBULAR_THINNER:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v7, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->NOSE_THINNER:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v8, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->FACESTEREO:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    sget-object v9, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;->SKIN_BEAUTY:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    filled-new-array/range {v1 .. v9}, [Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->FEATURES:[Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    return-void
.end method
