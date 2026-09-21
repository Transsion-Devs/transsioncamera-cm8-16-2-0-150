.class public final Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OSSectionSeekBarBuilder"
.end annotation


# instance fields
.field private displayCharacters:Z

.field private dotsColor:I

.field private dotsSelectedColor:I

.field private dotsSelectedColorDisable:I

.field private dotsSize:I

.field private floatType:Z

.field private max:F

.field private min:F

.field private osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;",
            ">;"
        }
    .end annotation
.end field

.field private processMarginTopBottow:I

.field private progress:F

.field private secondTrackColor:I

.field private secondTrackColorDisable:I

.field private secondTrackSize:I

.field private sectionCount:I

.field private sectionTextColor:I

.field private sectionTextInterval:I

.field private sectionTextSize:I

.field private textBottomMargin:I

.field private textTopMargin:I

.field private thumbInWidth:I

.field private thumbInsideColor:I

.field private thumbInsideColorDisable:I

.field private thumbOutColor:I

.field private thumbOutColorDisable:I

.field private thumbOutWidth:I

.field private trackColor:I

.field private trackSize:I

.field private trackSizeMax:I


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .registers 7

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14b

    .line 1013
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 1014
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->min:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 1015
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->max:F

    .line 1016
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    .line 1017
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_color:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_color_white100:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColor:I

    .line 1019
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_track_width:I

    .line 1020
    sget-object v1, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v3

    .line 1021
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    .line 1018
    invoke-static {v0, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSize:I

    .line 1024
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_second_track_width:I

    .line 1025
    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v3

    .line 1026
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    .line 1023
    invoke-static {v0, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackSize:I

    .line 1029
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_dot_size:I

    const/4 v3, 0x6

    .line 1030
    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v3

    .line 1031
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    .line 1028
    invoke-static {v0, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSize:I

    const/16 v0, 0xc

    .line 1033
    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->sp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextSize:I

    .line 1035
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_text_top_margin:I

    const/16 v3, 0xb

    .line 1036
    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v3

    .line 1037
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    .line 1034
    invoke-static {v0, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textTopMargin:I

    const/4 v0, 0x0

    .line 1039
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textBottomMargin:I

    .line 1040
    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->processMarginTopBottow:I

    .line 1042
    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_width:I

    const/16 v3, 0x8

    .line 1043
    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v3

    .line 1044
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    .line 1041
    invoke-static {v2, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInWidth:I

    .line 1047
    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_out_width:I

    const/16 v3, 0xe

    .line 1048
    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v3

    .line 1049
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v4

    .line 1046
    invoke-static {v2, v3, v4}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutWidth:I

    .line 1052
    sget v2, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_t_track_width:I

    const/16 v3, 0x16

    .line 1053
    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result v1

    .line 1054
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v3

    .line 1051
    invoke-static {v2, v1, v3}, Lcom/transsion/widgetslib/util/Utils;->getAttrDimen(IILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSizeMax:I

    const/4 v1, 0x5

    .line 1056
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionCount:I

    .line 1057
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->floatType:Z

    const/4 v0, 0x1

    .line 1058
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->displayCharacters:Z

    .line 1060
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    .line 1061
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_fill_weaker:I

    .line 1062
    sget v2, Lcom/transsion/widgetslib/R$color;->os_fill_weaker_hios:I

    .line 1059
    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    .line 1065
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    .line 1066
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    .line 1067
    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    .line 1064
    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    .line 1071
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    .line 1072
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    .line 1073
    sget v2, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    .line 1070
    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColor:I

    .line 1077
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    .line 1078
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_text_info:I

    .line 1079
    sget v2, Lcom/transsion/widgetslib/R$color;->os_text_info_hios:I

    .line 1076
    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextColor:I

    .line 1082
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    .line 1083
    sget v1, Lcom/transsion/widgetslib/R$attr;->os_grayfill_strong:I

    .line 1084
    sget v2, Lcom/transsion/widgetslib/R$color;->os_grayfill_strong_hios:I

    .line 1081
    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsColor:I

    .line 1086
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_HIOS:Z

    if-eqz v0, :cond_119

    .line 1087
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_color_white30:I

    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_11d

    .line 1089
    :cond_119
    # invokes: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->thumbOutColor()I
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$thumbOutColor(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I

    move-result v0

    .line 1086
    :goto_11d
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSelectedColor:I

    .line 1091
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_grayfill_base:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_grayfill_base_hios:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColorDisable:I

    .line 1092
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColorDisable:I

    .line 1093
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_thumb_in_disable_color:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_switch_hios:I

    invoke-static {v0, v1, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColorDisable:I

    .line 1094
    # getter for: Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$getMContext$p(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$attr;->os_seekbar_section_dot_disable_color:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_grayfill_strong_hios:I

    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSelectedColorDisable:I

    :cond_14b
    return-void
.end method


# virtual methods
.method public final build()V
    .registers 2

    .line 1099
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->config(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;)V

    :cond_f
    return-void
.end method

.method public final displayCharacters(Z)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1205
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->displayCharacters:Z

    return-object p0
.end method

.method public final dotsColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1170
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsColor:I

    return-object p0
.end method

.method public final dotsSize(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1145
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSize:I

    return-object p0
.end method

.method public final floatType()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    const/4 v0, 0x1

    .line 1120
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->floatType:Z

    return-object p0
.end method

.method public final getDisplayCharacters()Z
    .registers 1

    .line 985
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->displayCharacters:Z

    return p0
.end method

.method public final getDotsColor()I
    .registers 1

    .line 1002
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsColor:I

    return p0
.end method

.method public final getDotsSelectedColor()I
    .registers 1

    .line 1003
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSelectedColor:I

    return p0
.end method

.method public final getDotsSelectedColorDisable()I
    .registers 1

    .line 1008
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSelectedColorDisable:I

    return p0
.end method

.method public final getDotsSize()I
    .registers 1

    .line 995
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSize:I

    return p0
.end method

.method public final getFloatType()Z
    .registers 1

    .line 984
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->floatType:Z

    return p0
.end method

.method public final getMax()F
    .registers 1

    .line 982
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->max:F

    return p0
.end method

.method public final getMin()F
    .registers 1

    .line 981
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->min:F

    return p0
.end method

.method public final getProcessMarginTopBottow()I
    .registers 1

    .line 992
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->processMarginTopBottow:I

    return p0
.end method

.method public final getProgress()F
    .registers 1

    .line 983
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    return p0
.end method

.method public final getSecondTrackColor()I
    .registers 1

    .line 998
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    return p0
.end method

.method public final getSecondTrackColorDisable()I
    .registers 1

    .line 1005
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColorDisable:I

    return p0
.end method

.method public final getSecondTrackSize()I
    .registers 1

    .line 987
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackSize:I

    return p0
.end method

.method public final getSectionCount()I
    .registers 1

    .line 996
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionCount:I

    return p0
.end method

.method public final getSectionTextColor()I
    .registers 1

    .line 1001
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextColor:I

    return p0
.end method

.method public final getSectionTextInterval()I
    .registers 1

    .line 1004
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextInterval:I

    return p0
.end method

.method public final getSectionTextSize()I
    .registers 1

    .line 988
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextSize:I

    return p0
.end method

.method public final getTextBottomMargin()I
    .registers 1

    .line 991
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textBottomMargin:I

    return p0
.end method

.method public final getTextTopMargin()I
    .registers 1

    .line 990
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textTopMargin:I

    return p0
.end method

.method public final getThumbInWidth()I
    .registers 1

    .line 993
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInWidth:I

    return p0
.end method

.method public final getThumbInsideColor()I
    .registers 1

    .line 1000
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColor:I

    return p0
.end method

.method public final getThumbInsideColorDisable()I
    .registers 1

    .line 1007
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColorDisable:I

    return p0
.end method

.method public final getThumbOutColor()I
    .registers 1

    .line 999
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColor:I

    return p0
.end method

.method public final getThumbOutColorDisable()I
    .registers 1

    .line 1006
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColorDisable:I

    return p0
.end method

.method public final getThumbOutWidth()I
    .registers 1

    .line 994
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutWidth:I

    return p0
.end method

.method public final getTrackColor()I
    .registers 1

    .line 997
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    return p0
.end method

.method public final getTrackSize()I
    .registers 1

    .line 986
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSize:I

    return p0
.end method

.method public final getTrackSizeMax()I
    .registers 1

    .line 989
    iget p0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSizeMax:I

    return p0
.end method

.method public final max(F)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1110
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->max:F

    return-object p0
.end method

.method public final min(F)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1104
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->min:F

    .line 1105
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public final processMarginTopBottow(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1160
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->processMarginTopBottow:I

    return-object p0
.end method

.method public final progress(F)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1115
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public final secondTrackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1175
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    return-object p0
.end method

.method public final secondTrackColorDisable(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1190
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColorDisable:I

    return-object p0
.end method

.method public final secondTrackSize(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1130
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackSize:I

    return-object p0
.end method

.method public final sectionCount(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1200
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionCount:I

    return-object p0
.end method

.method public final sectionTextColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1215
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextColor:I

    return-object p0
.end method

.method public final sectionTextInterval(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1220
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextInterval:I

    return-object p0
.end method

.method public final sectionTextSize(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1210
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->sp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextSize:I

    return-object p0
.end method

.method public final setDisplayCharacters(Z)V
    .registers 2

    .line 985
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->displayCharacters:Z

    return-void
.end method

.method public final setDotsColor(I)V
    .registers 2

    .line 1002
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsColor:I

    return-void
.end method

.method public final setDotsSelectedColor(I)V
    .registers 2

    .line 1003
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSelectedColor:I

    return-void
.end method

.method public final setDotsSelectedColorDisable(I)V
    .registers 2

    .line 1008
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSelectedColorDisable:I

    return-void
.end method

.method public final setDotsSize(I)V
    .registers 2

    .line 995
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSize:I

    return-void
.end method

.method public final setFloatType(Z)V
    .registers 2

    .line 984
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->floatType:Z

    return-void
.end method

.method public final setMax(F)V
    .registers 2

    .line 982
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->max:F

    return-void
.end method

.method public final setMin(F)V
    .registers 2

    .line 981
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->min:F

    return-void
.end method

.method public final setProcessMarginTopBottow(I)V
    .registers 2

    .line 992
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->processMarginTopBottow:I

    return-void
.end method

.method public final setProgress(F)V
    .registers 2

    .line 983
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    return-void
.end method

.method public final setSecondTrackColor(I)V
    .registers 2

    .line 998
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    return-void
.end method

.method public final setSecondTrackColorDisable(I)V
    .registers 2

    .line 1005
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColorDisable:I

    return-void
.end method

.method public final setSecondTrackSize(I)V
    .registers 2

    .line 987
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackSize:I

    return-void
.end method

.method public final setSectionCount(I)V
    .registers 2

    .line 996
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionCount:I

    return-void
.end method

.method public final setSectionTextColor(I)V
    .registers 2

    .line 1001
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextColor:I

    return-void
.end method

.method public final setSectionTextInterval(I)V
    .registers 2

    .line 1004
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextInterval:I

    return-void
.end method

.method public final setSectionTextSize(I)V
    .registers 2

    .line 988
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextSize:I

    return-void
.end method

.method public final setTextBottomMargin(I)V
    .registers 2

    .line 991
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textBottomMargin:I

    return-void
.end method

.method public final setTextTopMargin(I)V
    .registers 2

    .line 990
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textTopMargin:I

    return-void
.end method

.method public final setThumbInWidth(I)V
    .registers 2

    .line 993
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInWidth:I

    return-void
.end method

.method public final setThumbInsideColor(I)V
    .registers 2

    .line 1000
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColor:I

    return-void
.end method

.method public final setThumbInsideColorDisable(I)V
    .registers 2

    .line 1007
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColorDisable:I

    return-void
.end method

.method public final setThumbOutColor(I)V
    .registers 2

    .line 999
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColor:I

    return-void
.end method

.method public final setThumbOutColorDisable(I)V
    .registers 2

    .line 1006
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColorDisable:I

    return-void
.end method

.method public final setThumbOutWidth(I)V
    .registers 2

    .line 994
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutWidth:I

    return-void
.end method

.method public final setTrackColor(I)V
    .registers 2

    .line 997
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    return-void
.end method

.method public final setTrackSize(I)V
    .registers 2

    .line 986
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSize:I

    return-void
.end method

.method public final setTrackSizeMax(I)V
    .registers 2

    .line 989
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSizeMax:I

    return-void
.end method

.method public final shadowColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final shadowDy(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final shadowRadius(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    return-object p0
.end method

.method public final textBottomMargin(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1155
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textBottomMargin:I

    return-object p0
.end method

.method public final textTopMargin(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1150
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textTopMargin:I

    return-object p0
.end method

.method public final thumbInWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1135
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInWidth:I

    return-object p0
.end method

.method public final thumbInsideColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1185
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColor:I

    return-object p0
.end method

.method public final thumbOutColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1180
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColor:I

    return-object p0
.end method

.method public final thumbOutColorDisable(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1195
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColorDisable:I

    return-object p0
.end method

.method public final thumbOutWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1140
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutWidth:I

    return-object p0
.end method

.method public final trackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 2

    .line 1165
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    return-object p0
.end method

.method public final trackSize(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .registers 3

    .line 1125
    sget-object v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->Companion:Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$Companion;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSize:I

    return-object p0
.end method
