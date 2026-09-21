.class Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot$4;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;
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


# direct methods
.method constructor <init>()V
    .registers 10

    .line 227
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_neutral_selector:I

    sget v4, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_skin_item:I

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_skin_neutral:I

    const/16 v1, 0xa

    const-string v2, "neutral"

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_cold_selector:I

    sget v5, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_skin_item:I

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_skin_cold:I

    const/16 v2, 0xb

    const-string v3, "cold"

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_warm_selector:I

    sget v6, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_skin_item:I

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_skin_warm:I

    const/16 v3, 0xc

    const-string/jumbo v4, "warm"

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_brown_selector:I

    sget v7, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_skin_item:I

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_feature_skin_brown:I

    const/16 v4, 0xd

    const-string v5, "brown"

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/pmaster/data/FaceBeautyItemInfo;-><init>(ILjava/lang/String;III)V

    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
