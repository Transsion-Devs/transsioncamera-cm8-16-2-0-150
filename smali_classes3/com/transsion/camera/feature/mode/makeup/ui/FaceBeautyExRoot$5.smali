.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$5;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 6

    .line 233
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_facebeauty_slimbody_switch:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    const/4 v3, 0x0

    const-string v4, "off"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    const/4 v3, 0x2

    const-string v4, "aiv2"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_smooth_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_smooth:I

    const/4 v3, 0x3

    const-string v4, "soften"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_skin:I

    const/4 v3, 0x4

    const-string/jumbo v4, "whiten"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_face_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_face:I

    const/4 v3, 0x5

    const-string v4, "face"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_eye_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_eye:I

    const/4 v3, 0x6

    const-string v4, "eye"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_cutting_face_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_cutting_face:I

    const/4 v3, 0x7

    const-string v4, "cuttingface"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_nose_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_nose:I

    const/16 v3, 0x8

    const-string v4, "nose"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_head_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_head_shrink:I

    const/16 v3, 0x9

    const-string v4, "head"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_reset_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    const/4 v3, 0x1

    const-string v4, "reset"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
