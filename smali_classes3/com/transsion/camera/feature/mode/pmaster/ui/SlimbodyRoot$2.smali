.class Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$2;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 13

    .line 137
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v2

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->mu_item_no_effect:I

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->btn_facebeauty_slimbody_switch:I

    const-string/jumbo v5, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v3

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_autoAi:I

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_fb_ai_selector:I

    const-string/jumbo v6, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100, \"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":1,\"shoulderSlim\":100,\"waistSlim\":100}"

    const/4 v2, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v4

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_body_slim:I

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 152
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_bodyslim_south_asia:I

    :goto_3b
    move v6, v0

    goto :goto_40

    .line 153
    :cond_3d
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_bodyslim:I

    goto :goto_3b

    :goto_40
    const-string v7, ""

    const/4 v3, 0x3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 150
    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v5

    sget v6, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_head_shrink:I

    .line 156
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 157
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_headshrink_south_asia:I

    :goto_59
    move v7, v0

    goto :goto_5e

    .line 158
    :cond_5b
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_headshrink:I

    goto :goto_59

    :goto_5e
    const-string v8, ""

    const/4 v4, 0x4

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 155
    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v4, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v6

    sget v7, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_shoulder_slim:I

    .line 161
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 162
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_shoulderslim_south_asia:I

    :goto_77
    move v8, v0

    goto :goto_7c

    .line 163
    :cond_79
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_shoulderslim:I

    goto :goto_77

    :goto_7c
    const-string v9, ""

    const/4 v5, 0x5

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 160
    invoke-virtual {p0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v5, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v7

    sget v8, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_waist_slim:I

    .line 166
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 167
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_waistslim_south_asia:I

    :goto_95
    move v9, v0

    goto :goto_9a

    .line 168
    :cond_97
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_waistslim:I

    goto :goto_95

    :goto_9a
    const-string v10, ""

    const/4 v6, 0x6

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 165
    invoke-virtual {p0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v6, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v8

    sget v9, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_butt_plump:I

    .line 171
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 172
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_buttplump_south_asia:I

    :goto_b3
    move v10, v0

    goto :goto_b8

    .line 173
    :cond_b5
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_buttplump:I

    goto :goto_b3

    :goto_b8
    const-string v11, ""

    const/4 v7, 0x7

    invoke-direct/range {v6 .. v11}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 170
    invoke-virtual {p0, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v2

    sget v3, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_leg_slim:I

    .line 176
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 177
    sget v1, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_legslim_south_asia:I

    :goto_d1
    move v4, v1

    goto :goto_d6

    .line 178
    :cond_d3
    sget v1, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_legslim:I

    goto :goto_d1

    :goto_d6
    const-string v5, ""

    const/16 v1, 0x8

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 175
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    invoke-static {}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$sfgetITEM_LAYOUT_ID()I

    move-result v3

    sget v4, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_custom_leg_lengthen:I

    .line 181
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isUseSouthAsiaIcoArea()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 182
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_leglengthen_south_asia:I

    :goto_f0
    move v5, v0

    goto :goto_f5

    .line 183
    :cond_f2
    sget v0, Lcom/transsion/camera/featurelibs/slimbodyRes/R$drawable;->btn_slimbody_leglengthen:I

    goto :goto_f0

    :goto_f5
    const-string v6, ""

    const/16 v2, 0x9

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    .line 180
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;

    sget v4, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_restore_layout:I

    sget v5, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->slimbody_preset_sure:I

    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->ic_multi_reset_selector:I

    const-string v7, ""

    const/4 v3, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/mode/pmaster/data/SlimBodyInfo;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
