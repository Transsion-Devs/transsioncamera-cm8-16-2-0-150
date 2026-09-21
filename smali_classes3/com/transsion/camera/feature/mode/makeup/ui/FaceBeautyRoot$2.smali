.class Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$2;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 9

    .line 83
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_16

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_16

    .line 89
    :cond_12
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    :goto_14
    move v5, v0

    goto :goto_19

    .line 87
    :cond_16
    :goto_16
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item_ui4:I

    goto :goto_14

    .line 91
    :goto_19
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_selector:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    const/4 v2, 0x1

    const-string v3, "aiv2"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_smooth_selector:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_smooth:I

    const/4 v2, 0x2

    const-string v3, "soften"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_selector:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_skin:I

    const/4 v2, 0x3

    const-string/jumbo v3, "whiten"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_face_selector:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_face:I

    const/4 v2, 0x4

    const-string v3, "face"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_eye_selector:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_eye:I

    const/4 v2, 0x5

    const-string v3, "eye"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_reset_selector:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    const/4 v3, 0x0

    const-string v4, "reset"

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
