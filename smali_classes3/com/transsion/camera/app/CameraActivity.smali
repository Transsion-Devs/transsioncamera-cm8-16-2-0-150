.class public Lcom/transsion/camera/app/CameraActivity;
.super Lcom/transsion/camera/app/BaseCameraActivity;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBackLensDirtyCounted:Z

.field private mFrontLensDirtyCounted:Z

.field private final mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public static synthetic $r8$lambda$9qmxuwl2u8gDUQYwnQs_iJKri2s(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 594
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showErrorAndFinish] on OK click, will finish activity"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraEndTime()V

    .line 596
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 83
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;-><init>()V

    .line 96
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 97
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method private getShowErrorMessage(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_b

    .line 632
    sget p1, Lcom/transsion/camera/R$string;->cannot_connect_camera:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 627
    :cond_b
    sget p1, Lcom/transsion/camera/R$string;->all_camera_damaged:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getShowErrorTitle(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x9

    if-ne p1, v0, :cond_b

    .line 618
    sget p1, Lcom/transsion/camera/R$string;->all_camera_damaged_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 620
    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method private showErrorAndFinishFlip(I)V
    .registers 4

    .line 608
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 611
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-interface {v0, p0, v1, p1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->showErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private showErrorAndFinishOthers(I)V
    .registers 5

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 589
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_4e

    .line 593
    :cond_18
    new-instance v0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 598
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/transsion/camera/R$style;->ConfirmAlertDialogStyle:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 599
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    .line 600
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 601
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 602
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    .line 603
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 604
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    .line 590
    :cond_4e
    :goto_4e
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showErrorAndFinish] activity is finishing, do noting"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startSpecifyModeAsd(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 204
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 203
    const-string v1, "key_hdr"

    const-string v2, "auto"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 206
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 205
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 208
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 207
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeAsdLivePhoto(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 8

    .line 311
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 310
    const-string v1, "key_live_photo"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeBackWideSuperDefinition(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 297
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 296
    const-string v1, "back_super_wide_camera"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 299
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 298
    const-string v7, "key_super_definition"

    const-string v8, "billion"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeDocument(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    return-void
.end method

.method private startSpecifyModeFrontSmartFocus(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 5

    .line 320
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 319
    const-string v1, "key_auto_focus_switch"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private startSpecifyModeFrontWideSuperDefinition(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 304
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 303
    const-string v1, "front_super_wide_camera"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 306
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 305
    const-string v7, "key_super_definition"

    const-string v8, "billion"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeHdr(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 213
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 212
    const-string v1, "key_hdr"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 215
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 214
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 217
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 216
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeHdrOff(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 222
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 221
    const-string v1, "key_hdr"

    const-string v2, "off"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 224
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 223
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 226
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 225
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeMacro(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 255
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 254
    const-string v1, "key_macro"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 257
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 256
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeSuperDefinitionOff(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 231
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 230
    const-string v1, "key_super_definition"

    const-string v2, "off"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 233
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 232
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 235
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 234
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeSuperDefinitionOn(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 240
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBillionPixelSupport:Z

    if-eqz p0, :cond_c

    .line 241
    const-string p0, "billion"

    :goto_a
    move-object v2, p0

    goto :goto_f

    .line 243
    :cond_c
    const-string p0, "on"

    goto :goto_a

    .line 246
    :goto_f
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 245
    const-string v1, "key_super_definition"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 248
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 247
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 250
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 249
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeTele(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 8

    .line 269
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 268
    const-string v1, "key_tele_camera"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeVideoBack4KAnti(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 283
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 282
    const-string v1, "key_video_quality"

    const-string v2, "8"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 285
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 284
    const-string v7, "key_super_anti_video"

    const-string v8, "on"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeVideoBackHighFpsAnti(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 290
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 289
    const-string v1, "key_video_quality"

    const-string v2, "6_60"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 292
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 291
    const-string v7, "key_super_anti_video"

    const-string v8, "on"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeVideoEnhanceBack4K(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 274
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 273
    const-string v1, "key_video_quality"

    const-string v2, "8"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 276
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 275
    const-string v7, "key_video_preisp"

    const-string v8, "on"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 278
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 277
    const-string v7, "key_super_anti_video"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeVlog(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 2

    return-void
.end method

.method private startSpecifyModeWideAngle(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 262
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 261
    const-string/jumbo v1, "wide_camera"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 264
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 263
    const-string v7, "key_macro"

    const-string v8, "off"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 102
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_26

    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    .line 103
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 104
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 p0, 0x1

    return p0

    .line 107
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_2d

    .line 108
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->performTouchEvent(Landroid/view/MotionEvent;)V

    .line 110
    :cond_2d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected doShowLensDirtyHintIfNeed(Ljava/lang/String;)V
    .registers 10

    .line 654
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doShowLensDirtyHintIfNeed(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 660
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    if-nez v2, :cond_94

    .line 663
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    goto :goto_2e

    .line 668
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    if-nez v2, :cond_94

    .line 670
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    .line 676
    :goto_2e
    const-string v2, "key_lens_dirty_count_down"

    const/4 v3, 0x0

    .line 680
    :try_start_31
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 681
    sget-object v5, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doShowLensDirtyHintIfNeed id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", countDown: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5a} :catch_7d

    if-gtz p1, :cond_7b

    .line 684
    :try_start_5c
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    sget v5, Lcom/transsion/camera/R$string;->camera_lens_dirty_toast:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 685
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 686
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v5, 0x1770

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDuration(I)V

    .line 687
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v5, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/BaseAppUI;->showLensDirtyHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_7a} :catch_7e

    goto :goto_7e

    :cond_7b
    move v4, v3

    goto :goto_7f

    :catch_7d
    move p1, v3

    :catch_7e
    :goto_7e
    move v4, v1

    :goto_7f
    if-eqz v4, :cond_8a

    const/16 p1, 0x82

    const/16 v1, 0x96

    .line 695
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->randomValueIn(II)I

    move-result p1

    goto :goto_8b

    :cond_8a
    sub-int/2addr p1, v1

    .line 699
    :goto_8b
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_94
    return-void
.end method

.method protected getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;
    .registers 3

    .line 726
    const-class v0, Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 727
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/camera/app/CameraApplication;

    if-eqz v0, :cond_30

    .line 728
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/CameraApplication;

    invoke-virtual {v0}, Lcom/transsion/camera/app/CameraApplication;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    if-eqz v0, :cond_2d

    .line 730
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->initFoldFlipActivityProxy(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V

    .line 732
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0

    .line 737
    :cond_32
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object p0

    return-object p0
.end method

.method protected hideErrorAndFinish()V
    .registers 3

    .line 640
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->hideErrorAndFinish()V

    .line 642
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideErrorAndFinish: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 646
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 648
    invoke-interface {p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->hideErrorAndFinish()V

    :cond_22
    return-void
.end method

.method protected initAppUI(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 13

    .line 372
    sget v0, Lcom/transsion/camera/R$layout;->camera_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 374
    sget v0, Lcom/transsion/camera/R$id;->camera_app_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz v0, :cond_17

    .line 376
    sget v1, Lcom/transsion/camera/R$id;->thumbnail_transition_view3:I

    invoke-virtual {v0, v4, v1}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->init(Landroid/view/ViewGroup;I)V

    .line 378
    :cond_17
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isMultiTouchSupport()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSecureCamera(Z)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setVoiceInteraction(Z)V

    .line 383
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, p1, Lcom/transsion/camera/app/intent/IntentParser;->mFromIntent:Z

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    move-object v3, p1

    move-object v9, p2

    .line 383
    invoke-virtual/range {v1 .. v9}, Lcom/transsion/camera/app/ui/BaseAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void
.end method

.method protected initDataStore(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V
    .registers 4

    .line 743
    const-class v0, Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 744
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/camera/app/CameraApplication;

    if-eqz p1, :cond_2c

    .line 745
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/CameraApplication;

    invoke-virtual {p1}, Lcom/transsion/camera/app/CameraApplication;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 746
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->clearAllCache()V

    return-void

    .line 748
    :cond_2c
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "getApplication() is not CameraApplication!"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 751
    :cond_34
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->initDataStore(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V

    return-void
.end method

.method protected initSystemUI()V
    .registers 3

    .line 325
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->initSystemUI()V

    .line 326
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 328
    invoke-interface {v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->initSystemUI()V

    return-void

    .line 330
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12

    const/16 v0, 0x1002

    const/16 v1, 0x1001

    if-ne p1, v0, :cond_8

    if-nez p3, :cond_16

    :cond_8
    if-eq p1, v1, :cond_16

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_12

    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    goto :goto_16

    :cond_12
    move-object v5, p0

    move-object v3, p3

    goto/16 :goto_8b

    .line 536
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    if-eqz v0, :cond_12

    .line 540
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult, data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v0, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->setSourceIntent(Landroid/content/Intent;)V

    .line 542
    new-instance v2, Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v6, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v7, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v4, 0x0

    move-object v5, p0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 543
    iget-object p0, v5, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5, v2, p0}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 544
    iget-boolean p0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez p0, :cond_60

    const-string p0, "gopro_mode"

    iget-object p3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 545
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    const-string p0, "arcore_mode"

    iget-object p3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 546
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    if-ne p1, v1, :cond_7b

    :cond_60
    if-eqz v3, :cond_6b

    .line 550
    const-string p0, "ar_uri"

    invoke-virtual {v3, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    goto :goto_6c

    :cond_6b
    const/4 p0, 0x0

    :goto_6c
    if-eqz p0, :cond_73

    .line 553
    iget-object p3, v5, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p3, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 555
    :cond_73
    iget-object p0, v5, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_7b

    const/4 p3, 0x1

    .line 556
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetCurrentMode(Z)V

    .line 559
    :cond_7b
    iget-boolean p0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz p0, :cond_88

    iget-object p0, v5, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_88

    .line 560
    iget-object p3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->setNextCameraId(Ljava/lang/String;)V

    .line 563
    :cond_88
    invoke-virtual {v5, v2}, Lcom/transsion/camera/app/CameraActivity;->processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 566
    :goto_8b
    invoke-super {v5, p1, p2, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 124
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 126
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 128
    :cond_9
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDestroyTasks()V
    .registers 1

    .line 115
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onDestroyTasks()V

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz p0, :cond_a

    .line 117
    invoke-virtual {p0}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->destroy()V

    .line 119
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->onDestroy()V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .registers 13

    .line 410
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-nez v0, :cond_f

    .line 412
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onNewIntentTasks return because onCreate is not exec."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 417
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 419
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onNewIntentTasks(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 430
    :goto_1c
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->setSourceIntent(Landroid/content/Intent;)V

    .line 431
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateMetaInfo(Landroid/os/Bundle;)V

    .line 433
    const-string/jumbo v2, "video_mode"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 434
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string v4, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetToSpecialMode(Ljava/lang/String;)V

    .line 437
    :cond_3b
    new-instance v5, Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v9, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v10, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v7, 0x0

    move-object v8, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 438
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mFromNegativeScreen:Z

    const/4 p1, 0x1

    if-eqz p0, :cond_5c

    .line 439
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mIsNegativeScreenAIGCMode:Z

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateIntentFromNegativeScreen(ZZ)V

    .line 440
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    goto :goto_65

    .line 441
    :cond_5c
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPortraitMode:Z

    if-eqz p0, :cond_65

    .line 442
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateIntentFromNegativeScreen(ZZ)V

    .line 444
    :cond_65
    :goto_65
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v8, v5, p0}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 445
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    const-string v2, "shoulder_button_double_tap"

    const-string v4, "ai_key_double_tap"

    const-string/jumbo v7, "underwater_volume_double_tap"

    const-string/jumbo v9, "volume_double_tap"

    if-nez p0, :cond_b2

    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez p0, :cond_b2

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 446
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 447
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 448
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 449
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    const-string p0, "open_camera_mode"

    .line 450
    invoke-virtual {v6, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b2

    iget-boolean p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToARCore:Z

    if-nez p0, :cond_b2

    iget-boolean p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mGoingToGoPro:Z

    if-nez p0, :cond_b2

    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mIsFromDocument:Z

    if-nez p0, :cond_b2

    if-eqz v0, :cond_f5

    .line 452
    :cond_b2
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-nez p0, :cond_dc

    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez p0, :cond_dc

    if-nez v0, :cond_dc

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 453
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 454
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 455
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 456
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e1

    .line 457
    :cond_dc
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->resetMoreModeToNormal()V

    .line 459
    :cond_e1
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_ee

    .line 460
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetCurrentMode(Z)V

    .line 461
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateUIState(IILjava/lang/String;)V

    :cond_ee
    if-eqz v0, :cond_f5

    .line 464
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, p1, v1, v1, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 468
    :cond_f5
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz p0, :cond_107

    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_107

    .line 469
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setLaunchFromAod(Z)V

    .line 470
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setNextCameraId(Ljava/lang/String;)V

    .line 472
    :cond_107
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v8}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setVoiceInteraction(Z)V

    .line 473
    invoke-virtual {v8}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    iput-boolean p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    .line 474
    invoke-virtual {v8}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    if-eqz p0, :cond_125

    .line 475
    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$style;->VoiceActivityAniamtion:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 477
    :cond_125
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntentTasks mIsVoiceInteractionRoot "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 478
    iget-boolean v0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v0, :cond_150

    iget-boolean v0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    if-nez v0, :cond_150

    .line 479
    iget-object v0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, v5, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    iget-boolean v3, v5, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    iget v4, v5, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStartParameters(ZZZI)V

    .line 482
    :cond_150
    invoke-virtual {v8, v5}, Lcom/transsion/camera/app/CameraActivity;->processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 484
    invoke-static {v8}, Lcom/transsion/camera/utils/DVUtils;->isRequestEnterDV(Landroid/content/Context;)Z

    move-result v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntentTasks: isRequestEnterDV = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_177

    .line 487
    invoke-static {p1}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->setModeResetStatus(Z)V

    .line 488
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetToSpecialMode(Ljava/lang/String;)V

    :cond_177
    return-void
.end method

.method protected onPauseTasks()V
    .registers 1

    .line 522
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onPauseTasks()V

    .line 523
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenRelay;->pause()V

    .line 524
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onPause()V

    return-void
.end method

.method protected onPrePermissionPause()V
    .registers 2

    .line 494
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onPrePermissionPause()V

    .line 495
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 497
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onPrePermissionPause(Landroid/app/Activity;)V

    :cond_c
    return-void
.end method

.method protected onRestartTasks()V
    .registers 1

    .line 402
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onRestartTasks()V

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz p0, :cond_a

    .line 404
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenSize()V

    :cond_a
    return-void
.end method

.method protected onResumeTasks()V
    .registers 2

    .line 508
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onResumeTasks()V

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    .line 510
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    .line 511
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_11

    .line 512
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailFromAod()V

    .line 514
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->getDisplayActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    .line 515
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->PRIMARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->switchScreen(Lcom/transsion/camera/manager/ScreenRelay$Screen;)V

    .line 517
    :cond_21
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onResume()V

    return-void
.end method

.method protected onStartTasks()V
    .registers 1

    .line 503
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onStartTasks()V

    return-void
.end method

.method protected processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V
    .registers 3

    .line 340
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-nez v0, :cond_f

    .line 343
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mModeManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 347
    :cond_f
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyTele:Z

    if-eqz v0, :cond_2f

    .line 348
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 350
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "teleId isn\'t exist"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 353
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchTeleCameraForSpecifyMode(Ljava/lang/String;)V

    return-void

    .line 358
    :cond_2f
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 360
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "wideCameraId isn\'t exist"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_4a
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    if-nez v0, :cond_65

    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    if-eqz v0, :cond_53

    goto :goto_65

    .line 365
    :cond_53
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    if-nez v0, :cond_5d

    iget-boolean p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    if-eqz p1, :cond_5c

    goto :goto_5d

    :cond_5c
    return-void

    .line 366
    :cond_5d
    :goto_5d
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraForSpecifyMode(Ljava/lang/String;)V

    return-void

    .line 364
    :cond_65
    :goto_65
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraForSpecifyMode(Ljava/lang/String;)V

    return-void
.end method

.method protected processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 140
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/BaseCameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    if-nez p2, :cond_d

    .line 142
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dataStore is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_d
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    if-eqz v0, :cond_14

    .line 146
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeAsd(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 148
    :cond_14
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    if-eqz v0, :cond_1b

    .line 149
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeHdr(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 151
    :cond_1b
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDROff:Z

    if-eqz v0, :cond_22

    .line 152
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeHdrOff(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 154
    :cond_22
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOff:Z

    if-eqz v0, :cond_29

    .line 155
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeSuperDefinitionOff(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 157
    :cond_29
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOn:Z

    if-eqz v0, :cond_30

    .line 158
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeSuperDefinitionOn(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 160
    :cond_30
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    if-eqz v0, :cond_37

    .line 161
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeMacro(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 163
    :cond_37
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    if-eqz v0, :cond_3e

    .line 164
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeWideAngle(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 166
    :cond_3e
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyTele:Z

    if-eqz v0, :cond_45

    .line 167
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeTele(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 169
    :cond_45
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mIsFromDocument:Z

    if-eqz v0, :cond_4c

    .line 170
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeDocument(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 172
    :cond_4c
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoEnhanceBack4K:Z

    if-eqz v0, :cond_53

    .line 173
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeVideoEnhanceBack4K(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 175
    :cond_53
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBack4KAnti:Z

    if-eqz v0, :cond_5a

    .line 176
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeVideoBack4KAnti(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 178
    :cond_5a
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBackHighFpsAnti:Z

    if-eqz v0, :cond_61

    .line 179
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeVideoBackHighFpsAnti(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 181
    :cond_61
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDBackWideSuperDefinition:Z

    if-eqz v0, :cond_68

    .line 182
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeBackWideSuperDefinition(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 184
    :cond_68
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDFrontWideSuperDefinition:Z

    if-eqz v0, :cond_6f

    .line 185
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeFrontWideSuperDefinition(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 187
    :cond_6f
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDLivePhoto:Z

    if-eqz v0, :cond_76

    .line 188
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeAsdLivePhoto(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 190
    :cond_76
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVlog:Z

    if-eqz v0, :cond_7d

    .line 191
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeVlog(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 193
    :cond_7d
    iget-boolean p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontSmartFocus:Z

    if-eqz p1, :cond_84

    .line 194
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeFrontSmartFocus(Lcom/transsion/camera/app/common/storage/DataStore;)V

    :cond_84
    return-void
.end method

.method protected showErrorAndFinish(I)V
    .registers 5

    .line 571
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->showErrorAndFinish(I)V

    .line 573
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showErrorAndFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsResumed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_40

    .line 578
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_3d

    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-ne v1, v0, :cond_3d

    .line 579
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->showErrorAndFinishFlip(I)V

    return-void

    .line 581
    :cond_3d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->showErrorAndFinishOthers(I)V

    :cond_40
    :goto_40
    return-void
.end method

.method protected showExternalStorageUnmountedTip()V
    .registers 3

    .line 389
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showExternalStorageUnmountedTip()V

    .line 390
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 391
    sget v1, Lcom/transsion/camera/R$string;->external_storage_unmounted:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showLowStorageTip()V
    .registers 3

    .line 715
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showLowStorageTip()V

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->supportExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    sget v1, Lcom/transsion/camera/app/common/R$string;->storage_full:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_24

    .line 719
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    sget v1, Lcom/transsion/camera/app/common/R$string;->storage_full_no_sdcard:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 721
    :goto_24
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showThermalThrottleUrgent()V
    .registers 4

    .line 704
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showThermalThrottleUrgent()V

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 707
    const-string v1, "isSecureCamera"

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 708
    const-string v1, "flipOrientation"

    iget v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 709
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 710
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final updateThumbnailFromAod()V
    .registers 1

    .line 528
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 530
    invoke-interface {p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->updateThumbnailFromAod()V

    :cond_9
    return-void
.end method
