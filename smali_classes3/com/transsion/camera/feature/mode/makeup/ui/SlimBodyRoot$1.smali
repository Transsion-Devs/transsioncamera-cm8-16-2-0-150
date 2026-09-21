.class Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/makeup/ui/SlimBodyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 9

    .line 79
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v0, :cond_16

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_16

    .line 85
    :cond_12
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item:I

    :goto_14
    move v3, v0

    goto :goto_19

    .line 83
    :cond_16
    :goto_16
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_item_ui4:I

    goto :goto_14

    .line 87
    :goto_19
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_facebeauty_slimbody_switch:I

    const-string/jumbo v6, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_autoAi:I

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_selector:I

    const-string/jumbo v6, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    const/4 v2, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_body_slim:I

    .line 94
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 95
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_bodyslim_south_asia:I

    :goto_45
    move v5, v0

    goto :goto_4a

    .line 96
    :cond_47
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_bodyslim:I

    goto :goto_45

    :goto_4a
    const-string v6, ""

    const/4 v2, 0x3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 93
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_head_shrink:I

    .line 99
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 100
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_headshrink_south_asia:I

    :goto_5f
    move v5, v0

    goto :goto_64

    .line 101
    :cond_61
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_headshrink:I

    goto :goto_5f

    :goto_64
    const-string v6, ""

    const/4 v2, 0x4

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_shoulder_slim:I

    .line 104
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 105
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_shoulderslim_south_asia:I

    :goto_79
    move v5, v0

    goto :goto_7e

    .line 106
    :cond_7b
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_shoulderslim:I

    goto :goto_79

    :goto_7e
    const-string v6, ""

    const/4 v2, 0x5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 103
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_waist_slim:I

    .line 109
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 110
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_waistslim_south_asia:I

    :goto_93
    move v5, v0

    goto :goto_98

    .line 111
    :cond_95
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_waistslim:I

    goto :goto_93

    :goto_98
    const-string v6, ""

    const/4 v2, 0x6

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 108
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_butt_plump:I

    .line 114
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 115
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_buttplump_south_asia:I

    :goto_ad
    move v5, v0

    goto :goto_b2

    .line 116
    :cond_af
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_buttplump:I

    goto :goto_ad

    :goto_b2
    const-string v6, ""

    const/4 v2, 0x7

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 113
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_leg_slim:I

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 120
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_legslim_south_asia:I

    :goto_c7
    move v5, v0

    goto :goto_cc

    .line 121
    :cond_c9
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_legslim:I

    goto :goto_c7

    :goto_cc
    const-string v6, ""

    const/16 v2, 0x8

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 118
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_leg_lengthen:I

    .line 124
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 125
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_leglengthen_south_asia:I

    :goto_e2
    move v5, v0

    goto :goto_e7

    .line 126
    :cond_e4
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_leglengthen:I

    goto :goto_e2

    :goto_e7
    const-string v6, ""

    const/16 v2, 0x9

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 123
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/feature/makeup/R$layout;->restore_layout:I

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_reset_selector:I

    const-string v7, ""

    const/4 v3, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/makeup/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
