.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$6;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)V
    .registers 14

    .line 396
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$6;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_facebeauty_slimbody_switch:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v4

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    const/4 v1, 0x0

    const-string v2, "off"

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v5

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    const/4 v2, 0x2

    const-string v3, "aiv2"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    if-eqz v0, :cond_47

    .line 405
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_muscle_care_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v5

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_feature_muscle:I

    const/16 v2, 0xf

    const-string v3, "muscle_care"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_47
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_smooth_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v6

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_smooth:I

    const/4 v3, 0x3

    const-string v4, "soften"

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    .line 411
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_68

    .line 412
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_color_card_selector:I

    :goto_66
    move v6, v0

    goto :goto_6b

    .line 413
    :cond_68
    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_selector:I

    goto :goto_66

    :goto_6b
    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v7

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_skin:I

    const/4 v4, 0x4

    const-string/jumbo v5, "whiten"

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    .line 410
    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v4, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_face_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v8

    sget v9, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_face:I

    const/4 v5, 0x5

    const-string v6, "face"

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v5, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_eye_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v9

    sget v10, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_eye:I

    const/4 v6, 0x6

    const-string v7, "eye"

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v6, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v9, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_cutting_face_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v10

    sget v11, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_cutting_face:I

    const/4 v7, 0x7

    const-string v8, "cuttingface"

    invoke-direct/range {v6 .. v11}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_nose_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v4

    .line 428
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v1, :cond_c8

    .line 429
    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->face_beauty_feature_nose:I

    :goto_c6
    move v5, v1

    goto :goto_cb

    .line 430
    :cond_c8
    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_nose:I

    goto :goto_c6

    :goto_cb
    const/16 v1, 0x8

    const-string v2, "nose"

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    .line 425
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_head_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v5

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_head:I

    const/16 v2, 0x9

    const-string v3, "head"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$fgetmItdV2Support(Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;)Z

    move-result p1

    if-eqz p1, :cond_103

    .line 435
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_five_senses_selector:I

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v4

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_feature_five_senses:I

    const/16 v1, 0xe

    const-string v2, "five_senses"

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_103
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_reset_selector:I

    sget v5, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_restore_layout:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    const/4 v2, 0x1

    const-string v3, "reset"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
