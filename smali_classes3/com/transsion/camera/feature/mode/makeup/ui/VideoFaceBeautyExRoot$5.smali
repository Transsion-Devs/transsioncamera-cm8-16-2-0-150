.class Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$5;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .registers 7

    .line 382
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$5;->this$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 384
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_facebeauty_slimbody_switch:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    const/4 v3, 0x0

    const-string v4, "off"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 387
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    const/4 v3, 0x2

    const-string v4, "aiv2"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    if-nez v0, :cond_33

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_43

    .line 391
    :cond_33
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_muscle_care_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_feature_muscle:I

    const/16 v3, 0xf

    const-string v4, "muscle_care"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_43
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_smooth_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_smooth:I

    const/4 v3, 0x3

    const-string v4, "soften"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    .line 397
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v1, :cond_5f

    .line 398
    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_color_card_selector:I

    goto :goto_61

    .line 399
    :cond_5f
    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_selector:I

    :goto_61
    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_skin:I

    const/4 v3, 0x4

    const-string/jumbo v4, "whiten"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    .line 396
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_face_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_face:I

    const/4 v3, 0x5

    const-string v4, "face"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_eye_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_eye:I

    const/4 v3, 0x6

    const-string v4, "eye"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_cutting_face_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_cutting_face:I

    const/4 v3, 0x7

    const-string v4, "cuttingface"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_nose_selector:I

    .line 412
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v2, :cond_a9

    .line 413
    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->face_beauty_feature_nose:I

    goto :goto_ab

    .line 414
    :cond_a9
    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_nose:I

    :goto_ab
    const/16 v3, 0x8

    const-string v4, "nose"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    .line 410
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_head_selector:I

    sget v2, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_head_shrink:I

    const/16 v3, 0x9

    const-string v4, "head"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->-$$Nest$fgetmItdV2Support(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 419
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_five_senses_selector:I

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_feature_five_senses:I

    const/16 v2, 0xe

    const-string v3, "five_senses"

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_db
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    sget v0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_reset_selector:I

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    const/4 v2, 0x1

    const-string v3, "reset"

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
