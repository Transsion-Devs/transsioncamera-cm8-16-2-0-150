.class Lcom/transsion/widgetslib/widget/OSPopupTip$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSPopupTip;->show(Landroid/view/View;Ljava/lang/String;III)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gravity:I

.field final synthetic val$isRTL:Z

.field final synthetic val$layout:Landroid/view/View;

.field final synthetic val$marginHorizontal:I

.field final synthetic val$maxWidthSpaceCenter:I

.field final synthetic val$offset:I

.field final synthetic val$popupWidth:I

.field final synthetic val$popupWindow:Landroid/widget/PopupWindow;

.field final synthetic val$radius:I

.field final synthetic val$screenWidth:I

.field final synthetic val$viewAnchor:Landroid/view/View;

.field final synthetic val$viewArrow:Landroid/view/View;

.field final synthetic val$viewText:Landroid/widget/TextView;

.field final synthetic val$xoff:I

.field final synthetic val$yoff:I


# direct methods
.method constructor <init>(IILandroid/view/View;ILandroid/widget/PopupWindow;IIIILandroid/view/View;ZLandroid/view/View;ILandroid/content/Context;Landroid/widget/TextView;I)V
    .registers 17

    .line 198
    iput p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    iput-object p3, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iput p4, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    iput-object p5, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iput p6, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    iput p7, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    iput p8, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    iput p9, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iput-object p10, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    iput-boolean p11, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    iput-object p12, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iput p13, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$screenWidth:I

    iput-object p14, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$context:Landroid/content/Context;

    iput-object p15, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    move/from16 p1, p16

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$maxWidthSpaceCenter:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 24

    move-object/from16 v0, p0

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v1, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    int-to-float v6, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    const/4 v1, 0x2

    .line 204
    new-array v2, v1, [I

    .line 206
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const/16 v4, 0x50

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-ne v3, v4, :cond_8a

    .line 207
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 208
    aget v3, v2, v7

    .line 210
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    if-ge v3, v4, :cond_2e

    sub-int/2addr v4, v3

    goto :goto_2f

    :cond_2e
    move v4, v7

    .line 214
    :goto_2f
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v10, v3, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v11

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int/2addr v11, v3

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    const/4 v13, -0x2

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 217
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v3, v8

    div-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 219
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    if-ge v3, v4, :cond_5b

    move v3, v4

    .line 222
    :cond_5b
    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_60

    neg-int v3, v3

    .line 225
    :cond_60
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 227
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_73

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    goto :goto_82

    .line 228
    :cond_73
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v4, v8

    .line 227
    :goto_82
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 229
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 232
    :cond_8a
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const/16 v4, 0x51

    if-ne v3, v4, :cond_c8

    .line 233
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    .line 234
    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_9f

    neg-int v3, v3

    .line 235
    :cond_9f
    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v10, v3, v4

    .line 236
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v11, v3, v4

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    const/4 v13, -0x2

    .line 235
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 238
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 239
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 242
    :cond_c8
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const v4, 0x800055

    if-ne v3, v4, :cond_193

    .line 243
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 244
    aget v3, v2, v7

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    add-int/2addr v3, v4

    .line 246
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v4, v8

    .line 249
    iget v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$screenWidth:I

    if-le v3, v8, :cond_fa

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_fa

    .line 250
    iget v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$screenWidth:I

    sub-int/2addr v3, v8

    add-int/2addr v4, v3

    goto :goto_fb

    :cond_fa
    move v3, v7

    .line 254
    :goto_fb
    iget-boolean v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v8, :cond_119

    .line 255
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v11, v8, v4

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v4, v8

    iget v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v12, v4, v8

    iget v13, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    const/4 v14, -0x2

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_137

    .line 258
    :cond_119
    iget-object v15, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    sub-int v17, v9, v4

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v4, v9

    iget v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v18, v4, v9

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    const/16 v20, -0x2

    move/from16 v19, v4

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v20}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 262
    :goto_137
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v4, v8

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v1

    sub-int/2addr v4, v8

    add-int/2addr v4, v3

    .line 264
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v3, v8

    iget v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    sub-int/2addr v3, v8

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 265
    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_169

    neg-int v3, v3

    .line 268
    :cond_169
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 270
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_17c

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    goto :goto_18b

    .line 271
    :cond_17c
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget-object v8, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    add-float/2addr v4, v8

    .line 270
    :goto_18b
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 272
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 275
    :cond_193
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const/16 v4, 0x30

    const/4 v8, 0x1

    if-ne v3, v4, :cond_21c

    .line 276
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 277
    aget v3, v2, v7

    .line 279
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    if-ge v3, v4, :cond_1a7

    sub-int/2addr v4, v3

    goto :goto_1a8

    :cond_1a7
    move v4, v7

    .line 284
    :goto_1a8
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1bf

    .line 285
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getTextActualHeight(Landroid/widget/TextView;)I
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v3

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v3, v9

    move v14, v3

    goto :goto_1c0

    :cond_1bf
    move v14, v8

    .line 287
    :goto_1c0
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v11, v3, v4

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v14

    neg-int v3, v3

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int/2addr v12, v3

    iget v13, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 289
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v3, v9

    div-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 291
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    if-ge v3, v4, :cond_1e8

    move v3, v4

    .line 294
    :cond_1e8
    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_1ed

    neg-int v3, v3

    .line 297
    :cond_1ed
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 299
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_200

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    goto :goto_20f

    .line 300
    :cond_200
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v4, v9

    .line 299
    :goto_20f
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 301
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 304
    :cond_21c
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const/16 v4, 0x31

    if-ne v3, v4, :cond_271

    .line 306
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_239

    .line 307
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getTextActualHeight(Landroid/widget/TextView;)I
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v3

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    move v14, v3

    goto :goto_23a

    :cond_239
    move v14, v8

    .line 309
    :goto_23a
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v13, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    sub-int/2addr v3, v13

    div-int/2addr v3, v1

    .line 310
    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_249

    neg-int v3, v3

    .line 311
    :cond_249
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v11, v3, v4

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v14

    neg-int v3, v3

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v12, v3, v4

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 313
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 314
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 317
    :cond_271
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const v4, 0x800035

    if-ne v3, v4, :cond_348

    .line 318
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 319
    aget v3, v2, v7

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    add-int/2addr v3, v4

    .line 322
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_2a0

    .line 323
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getTextActualHeight(Landroid/widget/TextView;)I
    invoke-static {v4}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v4

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v4, v9

    move v14, v4

    goto :goto_2a1

    :cond_2a0
    move v14, v8

    .line 325
    :goto_2a1
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v4, v9

    .line 327
    iget v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$screenWidth:I

    if-le v3, v9, :cond_2bb

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2bb

    .line 328
    iget v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$screenWidth:I

    sub-int/2addr v3, v9

    add-int/2addr v4, v3

    goto :goto_2bc

    :cond_2bb
    move v3, v7

    .line 331
    :goto_2bc
    iget-boolean v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v9, :cond_2d4

    .line 332
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int/2addr v11, v4

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v4, v14

    neg-int v4, v4

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int/2addr v12, v4

    iget v13, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_2e7

    .line 334
    :cond_2d4
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    sub-int/2addr v11, v4

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v4, v14

    neg-int v4, v4

    iget v12, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int/2addr v12, v4

    iget v13, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 337
    :goto_2e7
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v4, v9

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v1

    sub-int/2addr v4, v9

    add-int/2addr v4, v3

    .line 339
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v3, v9

    iget v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$radius:I

    sub-int/2addr v3, v9

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 341
    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_319

    neg-int v3, v3

    .line 344
    :cond_319
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 346
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    iget-boolean v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$isRTL:Z

    if-eqz v4, :cond_32c

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    goto :goto_33b

    .line 347
    :cond_32c
    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v4, v9

    .line 346
    :goto_33b
    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 348
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 351
    :cond_348
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const v4, 0x800013

    const/high16 v9, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_3ba

    .line 352
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 353
    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getSafeInsetLeft(Landroid/view/View;)I
    invoke-static/range {p1 .. p1}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$100(Landroid/view/View;)I

    move-result v3

    .line 354
    aget v4, v2, v7

    iget v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    mul-int/2addr v10, v1

    sub-int/2addr v4, v10

    sub-int/2addr v4, v3

    .line 355
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$maxWidthSpaceCenter:I

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    int-to-float v4, v4

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 356
    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v4, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 360
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_38b

    .line 361
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getTextActualHeight(Landroid/widget/TextView;)I
    invoke-static {v3}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v3

    move v15, v3

    goto :goto_38c

    :cond_38b
    move v15, v8

    .line 363
    :goto_38c
    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v11, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v3, v14

    neg-int v3, v3

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v12, v3, v4

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v15

    div-int/2addr v3, v1

    iget v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v13, v3, v4

    invoke-virtual/range {v10 .. v15}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 365
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotX(F)V

    .line 366
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    .line 369
    :cond_3ba
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$gravity:I

    const v4, 0x800015

    if-ne v3, v4, :cond_437

    .line 370
    iget-object v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 371
    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getSafeInsetLeft(Landroid/view/View;)I
    invoke-static/range {p1 .. p1}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$100(Landroid/view/View;)I

    move-result v3

    .line 372
    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getSafeInsetRight(Landroid/view/View;)I
    invoke-static/range {p1 .. p1}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$200(Landroid/view/View;)I

    move-result v4

    .line 373
    iget v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$screenWidth:I

    aget v2, v2, v7

    iget-object v7, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v2, v7

    sub-int/2addr v10, v2

    iget v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    mul-int/2addr v2, v1

    sub-int/2addr v10, v2

    add-int/2addr v10, v3

    add-int/2addr v10, v4

    .line 374
    iget v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$maxWidthSpaceCenter:I

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$marginHorizontal:I

    int-to-float v3, v3

    mul-float/2addr v3, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 375
    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWidth:I

    iget-object v4, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewArrow:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 380
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v2, :cond_408

    .line 381
    iget-object v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewText:Landroid/widget/TextView;

    # invokes: Lcom/transsion/widgetslib/widget/OSPopupTip;->getTextActualHeight(Landroid/widget/TextView;)I
    invoke-static {v2}, Lcom/transsion/widgetslib/widget/OSPopupTip;->access$000(Landroid/widget/TextView;)I

    move-result v8

    :cond_408
    move v14, v8

    .line 383
    iget-object v9, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$popupWindow:Landroid/widget/PopupWindow;

    iget-object v10, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$offset:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$xoff:I

    add-int v11, v2, v3

    iget-object v2, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$viewAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v2, v14

    div-int/2addr v2, v1

    iget v1, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$yoff:I

    add-int v12, v2, v1

    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 385
    iget-object v1, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotX(F)V

    .line 386
    iget-object v0, v0, Lcom/transsion/widgetslib/widget/OSPopupTip$2;->val$layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_437
    return-void
.end method
