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

    .line 591
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showErrorAndFinish] on OK click, will finish activity"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraEndTime()V

    .line 593
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraActivity"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Lcom/transsion/camera/app/BaseCameraActivity;-><init>()V

    .line 95
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 96
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-void
.end method

.method private getShowErrorMessage(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x9

    if-eq p1, v0, :cond_b

    .line 629
    sget p1, Lcom/transsion/camera/R$string;->cannot_connect_camera:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 624
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

    .line 615
    sget p1, Lcom/transsion/camera/R$string;->all_camera_damaged_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 617
    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method private showErrorAndFinishFlip(I)V
    .registers 4

    .line 605
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 608
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    .line 607
    invoke-interface {v0, p0, v1, p1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->showErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private showErrorAndFinishOthers(I)V
    .registers 5

    .line 583
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 586
    :cond_b
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_4e

    .line 590
    :cond_18
    new-instance v0, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/CameraActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 595
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/transsion/camera/R$style;->ConfirmAlertDialogStyle:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 596
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    .line 597
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 598
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorTitle(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 599
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->getShowErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a

    .line 600
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    .line 587
    :cond_4e
    :goto_4e
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[showErrorAndFinish] activity is finishing, do noting"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startSpecifyModeAsd(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 197
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 196
    const-string v1, "key_hdr"

    const-string v2, "auto"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 199
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 198
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 201
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 200
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeBackWideSuperDefinition(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 290
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 289
    const-string v1, "back_super_wide_camera"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 292
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 291
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

    .line 308
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 307
    const-string v1, "key_auto_focus_switch"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private startSpecifyModeFrontWideSuperDefinition(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 297
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 296
    const-string v1, "front_super_wide_camera"

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

.method private startSpecifyModeHdr(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 206
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 205
    const-string v1, "key_hdr"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 208
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 207
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 210
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 209
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeHdrOff(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 215
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 214
    const-string v1, "key_hdr"

    const-string v2, "off"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 217
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 216
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 219
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 218
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeMacro(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 248
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 247
    const-string v1, "key_macro"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 250
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 249
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeSuperDefinitionOff(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 224
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 223
    const-string v1, "key_super_definition"

    const-string v2, "off"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 226
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 225
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 228
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 227
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeSuperDefinitionOn(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 233
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mBillionPixelSupport:Z

    if-eqz p0, :cond_c

    .line 234
    const-string p0, "billion"

    :goto_a
    move-object v2, p0

    goto :goto_f

    .line 236
    :cond_c
    const-string p0, "on"

    goto :goto_a

    .line 239
    :goto_f
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 238
    const-string v1, "key_super_definition"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 241
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 240
    const-string v7, "key_macro"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 243
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 242
    const-string/jumbo v7, "wide_camera"

    const-string v8, "off"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeTele(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 8

    .line 262
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 261
    const-string v1, "key_tele_camera"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeVideoBack4KAnti(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 276
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 275
    const-string v1, "key_video_quality"

    const-string v2, "8"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 278
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 277
    const-string v7, "key_super_anti_video"

    const-string v8, "on"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private startSpecifyModeVideoBackHighFpsAnti(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 283
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 282
    const-string v1, "key_video_quality"

    const-string v2, "6_60"

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

.method private startSpecifyModeVideoEnhanceBack4K(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 14

    .line 267
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 266
    const-string v1, "key_video_quality"

    const-string v2, "8"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v6, v0

    .line 269
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 268
    const-string v7, "key_video_preisp"

    const-string v8, "on"

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 271
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    .line 270
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

    .line 255
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 254
    const-string/jumbo v1, "wide_camera"

    const-string v2, "on"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 257
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 256
    const-string v7, "key_macro"

    const-string v8, "off"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 101
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_26

    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    .line 102
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    .line 103
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->currentModeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 p0, 0x1

    return p0

    .line 106
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_2d

    .line 107
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->performTouchEvent(Landroid/view/MotionEvent;)V

    .line 109
    :cond_2d
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected doShowLensDirtyHintIfNeed(Ljava/lang/String;)V
    .registers 10

    .line 651
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doShowLensDirtyHintIfNeed(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 657
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    if-nez v2, :cond_94

    .line 660
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    goto :goto_2e

    .line 665
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    iget-boolean v2, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    if-nez v2, :cond_94

    .line 667
    iput-boolean v1, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    .line 673
    :goto_2e
    const-string v2, "key_lens_dirty_count_down"

    const/4 v3, 0x0

    .line 677
    :try_start_31
    iget-object v4, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 678
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

    .line 679
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5a} :catch_7d

    if-gtz p1, :cond_7b

    .line 681
    :try_start_5c
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    sget v5, Lcom/transsion/camera/R$string;->camera_lens_dirty_toast:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 682
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v4, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 683
    iget-object v4, p0, Lcom/transsion/camera/app/CameraActivity;->mLensDirtyHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v5, 0x1770

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDuration(I)V

    .line 684
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

    .line 692
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/CameraUtil;->randomValueIn(II)I

    move-result p1

    goto :goto_8b

    :cond_8a
    sub-int/2addr p1, v1

    .line 696
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

    .line 723
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

    .line 724
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/camera/app/CameraApplication;

    if-eqz v0, :cond_30

    .line 725
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/CameraApplication;

    invoke-virtual {v0}, Lcom/transsion/camera/app/CameraApplication;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    if-eqz v0, :cond_2d

    .line 727
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->initFoldFlipActivityProxy(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V

    .line 729
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mFoldFlipActivityProxy:Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    return-object p0

    :cond_30
    const/4 p0, 0x0

    return-object p0

    .line 734
    :cond_32
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object p0

    return-object p0
.end method

.method protected hideErrorAndFinish()V
    .registers 3

    .line 637
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->hideErrorAndFinish()V

    .line 639
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideErrorAndFinish: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 643
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 645
    invoke-interface {p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->hideErrorAndFinish()V

    :cond_22
    return-void
.end method

.method protected initAppUI(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 13

    .line 360
    sget v0, Lcom/transsion/camera/R$layout;->camera_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 362
    sget v0, Lcom/transsion/camera/R$id;->camera_app_root:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 363
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz v0, :cond_17

    .line 364
    sget v1, Lcom/transsion/camera/R$id;->thumbnail_transition_view3:I

    invoke-virtual {v0, v4, v1}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->init(Landroid/view/ViewGroup;I)V

    .line 366
    :cond_17
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isMultiTouchSupport()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setThumbnailTransitionManager(Lcom/transsion/camera/app/common/thumbnailtransition/IThumbnailTransition;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSecureCamera(Z)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setVoiceInteraction(Z)V

    .line 371
    iget-object v1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, p1, Lcom/transsion/camera/app/intent/IntentParser;->mFromIntent:Z

    .line 372
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    move-object v3, p1

    move-object v9, p2

    .line 371
    invoke-virtual/range {v1 .. v9}, Lcom/transsion/camera/app/ui/BaseAppUI;->init(ZLcom/transsion/camera/app/intent/IntentParser;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;Landroid/app/FragmentManager;Landroid/content/ContentResolver;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V

    return-void
.end method

.method protected initDataStore(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V
    .registers 4

    .line 740
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

    .line 741
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/camera/app/CameraApplication;

    if-eqz p1, :cond_2c

    .line 742
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/CameraApplication;

    invoke-virtual {p1}, Lcom/transsion/camera/app/CameraApplication;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 743
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->clearAllCache()V

    return-void

    .line 745
    :cond_2c
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "getApplication() is not CameraApplication!"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 748
    :cond_34
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->initDataStore(Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;)V

    return-void
.end method

.method protected initSystemUI()V
    .registers 3

    .line 313
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->initSystemUI()V

    .line 314
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 316
    invoke-interface {v0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->initSystemUI()V

    return-void

    .line 318
    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x600

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    return-void
.end method

.method protected needResetToAsdMode()Z
    .registers 2

    .line 485
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isNeedSendBroadcastToNfc()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p0, :cond_18

    .line 486
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
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

    .line 533
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    if-eqz v0, :cond_12

    .line 537
    sget-object v0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult, data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v0, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->setSourceIntent(Landroid/content/Intent;)V

    .line 539
    new-instance v2, Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v6, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v7, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v4, 0x0

    move-object v5, p0

    move-object v3, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 540
    iget-object p0, v5, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5, v2, p0}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 541
    iget-boolean p0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez p0, :cond_60

    const-string p0, "gopro_mode"

    iget-object p3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 542
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    const-string p0, "arcore_mode"

    iget-object p3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 543
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    if-ne p1, v1, :cond_7b

    :cond_60
    if-eqz v3, :cond_6b

    .line 547
    const-string p0, "ar_uri"

    invoke-virtual {v3, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    goto :goto_6c

    :cond_6b
    const/4 p0, 0x0

    :goto_6c
    if-eqz p0, :cond_73

    .line 550
    iget-object p3, v5, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p3, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateBrowserData(Landroid/net/Uri;)V

    .line 552
    :cond_73
    iget-object p0, v5, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_7b

    const/4 p3, 0x1

    .line 553
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetCurrentMode(Z)V

    .line 556
    :cond_7b
    iget-boolean p0, v2, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz p0, :cond_88

    iget-object p0, v5, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_88

    .line 557
    iget-object p3, v2, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->setNextCameraId(Ljava/lang/String;)V

    .line 560
    :cond_88
    invoke-virtual {v5, v2}, Lcom/transsion/camera/app/CameraActivity;->processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 563
    :goto_8b
    invoke-super {v5, p1, p2, v3}, Lcom/transsion/camera/app/BaseCameraActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 122
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V

    .line 124
    :cond_9
    invoke-super {p0, p1}, Lcom/transsion/camera/app/QuickActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDestroyTasks()V
    .registers 1

    .line 114
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onDestroyTasks()V

    .line 115
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->onDestroy()V

    return-void
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .registers 13

    .line 398
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-nez v0, :cond_f

    .line 400
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onNewIntentTasks return because onCreate is not exec."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 405
    :cond_f
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 407
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onNewIntentTasks(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1c

    :cond_1b
    move v0, v1

    .line 418
    :goto_1c
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, p1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->setSourceIntent(Landroid/content/Intent;)V

    .line 419
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeUIPolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->updateMetaInfo(Landroid/os/Bundle;)V

    .line 421
    const-string/jumbo v2, "video_mode"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 422
    iget-object v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string v4, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-virtual {v2, v4}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetToSpecialMode(Ljava/lang/String;)V

    .line 425
    :cond_3b
    new-instance v5, Lcom/transsion/camera/app/intent/IntentParser;

    iget-object v9, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v10, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v7, 0x0

    move-object v8, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/transsion/camera/app/intent/IntentParser;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 426
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mFromNegativeScreen:Z

    const/4 p1, 0x1

    if-eqz p0, :cond_5c

    .line 427
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mIsNegativeScreenAIGCMode:Z

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateIntentFromNegativeScreen(ZZ)V

    .line 428
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraBootMethod(I)V

    goto :goto_65

    .line 429
    :cond_5c
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyPortraitMode:Z

    if-eqz p0, :cond_65

    .line 430
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateIntentFromNegativeScreen(ZZ)V

    .line 432
    :cond_65
    :goto_65
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v8, v5, p0}, Lcom/transsion/camera/app/CameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 433
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    const-string v2, "shoulder_button_double_tap"

    const-string v4, "ai_key_double_tap"

    const-string/jumbo v7, "underwater_volume_double_tap"

    const-string/jumbo v9, "volume_double_tap"

    if-nez p0, :cond_b2

    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez p0, :cond_b2

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 434
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 435
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 436
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 437
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    const-string p0, "open_camera_mode"

    .line 438
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

    .line 440
    :cond_b2
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-nez p0, :cond_dc

    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMode:Z

    if-nez p0, :cond_dc

    if-nez v0, :cond_dc

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 441
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 442
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 443
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    iget-object p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mLaunchSource:Ljava/lang/String;

    .line 444
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e1

    .line 445
    :cond_dc
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->resetMoreModeToNormal()V

    .line 447
    :cond_e1
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_ee

    .line 448
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetCurrentMode(Z)V

    .line 449
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateUIState(IILjava/lang/String;)V

    :cond_ee
    if-eqz v0, :cond_f5

    .line 452
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, p1, v1, v1, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->showOrHideShutterPanel(ZZIZ)V

    .line 456
    :cond_f5
    iget-boolean p0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mAppointCameraId:Z

    if-eqz p0, :cond_107

    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p0, :cond_107

    .line 457
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setLaunchFromAod(Z)V

    .line 458
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object v0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->setNextCameraId(Ljava/lang/String;)V

    .line 460
    :cond_107
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v8}, Landroid/app/Activity;->isVoiceInteraction()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setVoiceInteraction(Z)V

    .line 461
    invoke-virtual {v8}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    iput-boolean p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mVoiceInteractionRoot:Z

    .line 462
    invoke-virtual {v8}, Landroid/app/Activity;->isVoiceInteractionRoot()Z

    move-result p0

    if-eqz p0, :cond_125

    .line 463
    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$style;->VoiceActivityAniamtion:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 465
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

    .line 466
    iget-boolean v0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mGoogleAssistantIntent:Z

    if-eqz v0, :cond_150

    iget-boolean v0, v5, Lcom/transsion/camera/app/intent/IntentParser;->mOpenOnly:Z

    if-nez v0, :cond_150

    .line 467
    iget-object v0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v2, v5, Lcom/transsion/camera/app/intent/IntentParser;->mVideoIntent:Z

    iget-boolean v3, v5, Lcom/transsion/camera/app/intent/IntentParser;->mPhotoIntent:Z

    iget v4, v5, Lcom/transsion/camera/app/intent/IntentParser;->mDelayTime:I

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/ui/BaseAppUI;->setStartParameters(ZZZI)V

    .line 470
    :cond_150
    invoke-virtual {v8, v5}, Lcom/transsion/camera/app/CameraActivity;->processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 472
    invoke-static {v8}, Lcom/transsion/camera/utils/DVUtils;->isRequestEnterDV(Landroid/content/Context;)Z

    move-result v0

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntentTasks: isRequestEnterDV = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_177

    .line 475
    invoke-static {p1}, Lcom/transsion/camera/utils/manager/GlobalClickManager;->setModeResetStatus(Z)V

    .line 476
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "com.transsion.camera.feature.mode.video.DVVideoModeEntry"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetToSpecialMode(Ljava/lang/String;)V

    .line 479
    :cond_177
    invoke-virtual {v8}, Lcom/transsion/camera/app/CameraActivity;->needResetToAsdMode()Z

    move-result p0

    if-eqz p0, :cond_184

    .line 480
    iget-object p0, v8, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->resetToSpecialMode(Ljava/lang/String;)V

    :cond_184
    return-void
.end method

.method protected onPauseTasks()V
    .registers 1

    .line 519
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onPauseTasks()V

    .line 520
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/manager/ScreenRelay;->pause()V

    .line 521
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onPause()V

    return-void
.end method

.method protected onPrePermissionPause()V
    .registers 2

    .line 491
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onPrePermissionPause()V

    .line 492
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 494
    invoke-interface {v0, p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->onPrePermissionPause(Landroid/app/Activity;)V

    :cond_c
    return-void
.end method

.method protected onRestartTasks()V
    .registers 1

    .line 390
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onRestartTasks()V

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz p0, :cond_a

    .line 392
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenSize()V

    :cond_a
    return-void
.end method

.method protected onResumeTasks()V
    .registers 2

    .line 505
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onResumeTasks()V

    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mFrontLensDirtyCounted:Z

    .line 507
    iput-boolean v0, p0, Lcom/transsion/camera/app/CameraActivity;->mBackLensDirtyCounted:Z

    .line 508
    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_11

    .line 509
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->updateThumbnailFromAod()V

    .line 511
    :cond_11
    invoke-virtual {p0}, Lcom/transsion/camera/app/QuickActivity;->getDisplayActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    .line 512
    invoke-static {}, Lcom/transsion/camera/manager/ScreenRelay;->getInstance()Lcom/transsion/camera/manager/ScreenRelay;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/manager/ScreenRelay$Screen;->PRIMARY:Lcom/transsion/camera/manager/ScreenRelay$Screen;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/manager/ScreenRelay;->switchScreen(Lcom/transsion/camera/manager/ScreenRelay$Screen;)V

    .line 514
    :cond_21
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onResume()V

    return-void
.end method

.method protected onStartTasks()V
    .registers 1

    .line 500
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->onStartTasks()V

    return-void
.end method

.method protected processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V
    .registers 3

    .line 328
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->processCameraForSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;)V

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-nez v0, :cond_f

    .line 331
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mModeManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_f
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyTele:Z

    if-eqz v0, :cond_2f

    .line 336
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 338
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "teleId isn\'t exist"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 341
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchTeleCameraForSpecifyMode(Ljava/lang/String;)V

    return-void

    .line 346
    :cond_2f
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getWideCameraId()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 348
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "wideCameraId isn\'t exist"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_4a
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    if-nez v0, :cond_65

    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    if-eqz v0, :cond_53

    goto :goto_65

    .line 353
    :cond_53
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    if-nez v0, :cond_5d

    iget-boolean p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    if-eqz p1, :cond_5c

    goto :goto_5d

    :cond_5c
    return-void

    .line 354
    :cond_5d
    :goto_5d
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "on"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraForSpecifyMode(Ljava/lang/String;)V

    return-void

    .line 352
    :cond_65
    :goto_65
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    const-string p1, "off"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->switchWideCameraForSpecifyMode(Ljava/lang/String;)V

    return-void
.end method

.method protected processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 4

    .line 136
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/BaseCameraActivity;->processStartSpecifyMode(Lcom/transsion/camera/app/intent/IntentParser;Lcom/transsion/camera/app/common/storage/DataStore;)V

    if-nez p2, :cond_d

    .line 138
    sget-object p0, Lcom/transsion/camera/app/CameraActivity;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dataStore is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_d
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASD:Z

    if-eqz v0, :cond_14

    .line 142
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeAsd(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 144
    :cond_14
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDR:Z

    if-eqz v0, :cond_1b

    .line 145
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeHdr(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 147
    :cond_1b
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyHDROff:Z

    if-eqz v0, :cond_22

    .line 148
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeHdrOff(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 150
    :cond_22
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOff:Z

    if-eqz v0, :cond_29

    .line 151
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeSuperDefinitionOff(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 153
    :cond_29
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifySuperDefinitionOn:Z

    if-eqz v0, :cond_30

    .line 154
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeSuperDefinitionOn(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 156
    :cond_30
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyMacro:Z

    if-eqz v0, :cond_37

    .line 157
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeMacro(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 159
    :cond_37
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyWideAngle:Z

    if-eqz v0, :cond_3e

    .line 160
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeWideAngle(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 162
    :cond_3e
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyTele:Z

    if-eqz v0, :cond_45

    .line 163
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeTele(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 165
    :cond_45
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mIsFromDocument:Z

    if-eqz v0, :cond_4c

    .line 166
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeDocument(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 168
    :cond_4c
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoEnhanceBack4K:Z

    if-eqz v0, :cond_53

    .line 169
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeVideoEnhanceBack4K(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 171
    :cond_53
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBack4KAnti:Z

    if-eqz v0, :cond_5a

    .line 172
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeVideoBack4KAnti(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 174
    :cond_5a
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVideoBackHighFpsAnti:Z

    if-eqz v0, :cond_61

    .line 175
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeVideoBackHighFpsAnti(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 177
    :cond_61
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDBackWideSuperDefinition:Z

    if-eqz v0, :cond_68

    .line 178
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeBackWideSuperDefinition(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 180
    :cond_68
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyASDFrontWideSuperDefinition:Z

    if-eqz v0, :cond_6f

    .line 181
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeFrontWideSuperDefinition(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 183
    :cond_6f
    iget-boolean v0, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyVlog:Z

    if-eqz v0, :cond_76

    .line 184
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeVlog(Lcom/transsion/camera/app/common/storage/DataStore;)V

    .line 186
    :cond_76
    iget-boolean p1, p1, Lcom/transsion/camera/app/intent/IntentParser;->mSpecifyFrontSmartFocus:Z

    if-eqz p1, :cond_7d

    .line 187
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/CameraActivity;->startSpecifyModeFrontSmartFocus(Lcom/transsion/camera/app/common/storage/DataStore;)V

    :cond_7d
    return-void
.end method

.method protected showErrorAndFinish(I)V
    .registers 5

    .line 568
    invoke-super {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->showErrorAndFinish(I)V

    .line 570
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

    .line 571
    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_40

    .line 575
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    if-eqz v0, :cond_3d

    const/4 v1, 0x7

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-ne v1, v0, :cond_3d

    .line 576
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->showErrorAndFinishFlip(I)V

    return-void

    .line 578
    :cond_3d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity;->showErrorAndFinishOthers(I)V

    :cond_40
    :goto_40
    return-void
.end method

.method protected showExternalStorageUnmountedTip()V
    .registers 3

    .line 377
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showExternalStorageUnmountedTip()V

    .line 378
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 379
    sget v1, Lcom/transsion/camera/R$string;->external_storage_unmounted:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showLowStorageTip()V
    .registers 3

    .line 712
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showLowStorageTip()V

    .line 713
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppStorageManager:Lcom/transsion/camera/app/common/storage/AppStorageManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/AppStorageManager;->supportExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 714
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    sget v1, Lcom/transsion/camera/app/common/R$string;->storage_full:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_24

    .line 716
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    sget v1, Lcom/transsion/camera/app/common/R$string;->storage_full_no_sdcard:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 718
    :goto_24
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity;->mLowStorageHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected showThermalThrottleUrgent()V
    .registers 4

    .line 701
    invoke-super {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showThermalThrottleUrgent()V

    .line 703
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/camera/app/ThermalThrottleUrgentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 704
    const-string v1, "isSecureCamera"

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->isSecureCamera()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 705
    const-string v1, "flipOrientation"

    iget v2, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 707
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final updateThumbnailFromAod()V
    .registers 1

    .line 525
    invoke-virtual {p0}, Lcom/transsion/camera/app/CameraActivity;->getFoldFlipActivityProxy()Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 527
    invoke-interface {p0}, Lcom/transsion/camera/interfaces/fold_flip/IFoldFlipActivityProxy;->updateThumbnailFromAod()V

    :cond_9
    return-void
.end method
