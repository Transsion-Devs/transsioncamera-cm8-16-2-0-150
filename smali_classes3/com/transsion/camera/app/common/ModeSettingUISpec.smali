.class public Lcom/transsion/camera/app/common/ModeSettingUISpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAeAfLockSupport:Z

.field private mAodModeSettingUIEntries:[Ljava/lang/String;

.field private mBothCameraSupport:Z

.field private mDefaultSecondZoomValue:I

.field private mDefaultTeleSecondZoomValue:I

.field private mFlipModeInteractiveSettingUIEntries:[Ljava/lang/String;

.field private mFlipModeSettingUIEntries:[Ljava/lang/String;

.field private mFlipModeSupportAlgos:[I

.field private mFlipOptionSettingUIEntries:[Ljava/lang/String;

.field private mFlipPopSettingDownUIEntries:[Ljava/lang/String;

.field private mFlipPopSettingTopUIEntries:[Ljava/lang/String;

.field private mFlipWideCameraSettingUIEntries:[Ljava/lang/String;

.field private mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

.field private mInstantZoomList:Ljava/util/List;

.field private mIsSupportAuxPreview:Z

.field private mIsSupportFrontWideCamera:Z

.field private mIsSupportMacroCamera:Z

.field private mIsSupportPreviewHoverForm:Z

.field private mIsSupportSat:Z

.field private mIsSupportShare:Z

.field private mIsSupportSlavePreview:Z

.field private mIsSupportTeleCamera:Z

.field private mIsSupportVideoCamera:Z

.field private mIsSupportWideCamera:Z

.field private mLeftTopBarSettingUIEntries:[Ljava/lang/String;

.field private mMasterGuideUIBean:Ljava/util/List;

.field private mModeGuideLayoutIdList:Ljava/util/List;

.field private mModeInteractiveSettingUIEntries:[Ljava/lang/String;

.field private mModeOffsetPadding:I

.field private mModeSettingUIEntries:[Ljava/lang/String;

.field private mModeSupportAlgos:[I

.field private mName:Ljava/lang/String;

.field private mOptionSettingUIEntries:[Ljava/lang/String;

.field private mPopSettingUIEntries:[Ljava/lang/String;

.field private mPreferenceSettingUIEntries:[Ljava/lang/String;

.field private mRightTopBarSettingUIEntries:[Ljava/lang/String;

.field private mSettingGuideLayoutIdList:[Ljava/lang/String;

.field private mSupportChangeFlashWhenRecording:Z

.field private mTopBarSettingUIEntries:[Ljava/lang/String;

.field private mWideCameraSettingUIEntries:[Ljava/lang/String;

.field private mZoomInfoList:Ljava/util/List;

.field private mZoomItemType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSlavePreview:Z

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutIdList:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutIdList:[Ljava/lang/String;

    .line 51
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    .line 52
    iput v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeOffsetPadding:I

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAeAfLockSupport:Z

    .line 55
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportShare:Z

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportPreviewHoverForm:Z

    const/16 v1, 0xc8

    .line 57
    iput v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultSecondZoomValue:I

    const/16 v1, 0x258

    .line 58
    iput v1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultTeleSecondZoomValue:I

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSupportChangeFlashWhenRecording:Z

    .line 60
    iput v0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mZoomItemType:I

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aeAfLockSupport()Z
    .registers 1

    .line 362
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAeAfLockSupport:Z

    return p0
.end method

.method public getFlipModeInteractiveSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipModeInteractiveSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getFlipModeSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipModeSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getFlipModeSupportAlgos()[I
    .registers 1

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipModeSupportAlgos:[I

    return-object p0
.end method

.method public getFlipOptionSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipOptionSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getFlipPopSettingDownUIEntries()[Ljava/lang/String;
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipPopSettingDownUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getFlipPopSettingTopUIEntries()[Ljava/lang/String;
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipPopSettingTopUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getFlipWideCameraSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipWideCameraSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getFrontWideCameraSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getInstantZoomList()Ljava/util/List;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mInstantZoomList:Ljava/util/List;

    return-object p0
.end method

.method public getLeftTopBarSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mLeftTopBarSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getMasterGuideUIBean()Ljava/util/List;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mMasterGuideUIBean:Ljava/util/List;

    return-object p0
.end method

.method public getModeGuideLayoutIdList()Ljava/util/List;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutIdList:Ljava/util/List;

    return-object p0
.end method

.method public getModeInteractiveSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeInteractiveSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeOffsetPadding()I
    .registers 1

    .line 329
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeOffsetPadding:I

    return p0
.end method

.method public getModeSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeSupportAlgos()[I
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSupportAlgos:[I

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getOptionSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mOptionSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getPopSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mPopSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mPreferenceSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getRightTopBarSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mRightTopBarSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getSecondDefaultZoomValue()I
    .registers 1

    .line 390
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultSecondZoomValue:I

    return p0
.end method

.method public getSettingGuideLayoutIdList()[Ljava/lang/String;
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutIdList:[Ljava/lang/String;

    return-object p0
.end method

.method public getTeleSecondDefaultZoomValue()I
    .registers 1

    .line 394
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultTeleSecondZoomValue:I

    return p0
.end method

.method public getTopBarSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mTopBarSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getWideCameraSettingUIEntries()[Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mWideCameraSettingUIEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getZoomInfoList()Ljava/util/List;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mZoomInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getZoomItemType()I
    .registers 1

    .line 402
    iget p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mZoomItemType:I

    return p0
.end method

.method public isBothCameraSupport()Z
    .registers 1

    .line 358
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mBothCameraSupport:Z

    return p0
.end method

.method public isSupportAuxPreview()Z
    .registers 1

    .line 337
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    return p0
.end method

.method public isSupportChangeFlashWhenRecording()Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSupportChangeFlashWhenRecording:Z

    return p0
.end method

.method public isSupportFrontWideCamera()Z
    .registers 1

    .line 277
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    return p0
.end method

.method public isSupportMacroCamera()Z
    .registers 1

    .line 269
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    return p0
.end method

.method public isSupportSat()Z
    .registers 1

    .line 321
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    return p0
.end method

.method public isSupportShare()Z
    .registers 1

    .line 366
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportShare:Z

    return p0
.end method

.method public isSupportSlavePreview()Z
    .registers 1

    .line 345
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSlavePreview:Z

    return p0
.end method

.method public isSupportTeleCamera()Z
    .registers 1

    .line 293
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    return p0
.end method

.method public isSupportVideoCamera()Z
    .registers 1

    .line 285
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    return p0
.end method

.method public isSupportWideCamera()Z
    .registers 1

    .line 261
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    return p0
.end method

.method public setAeAfLockSupport(Z)V
    .registers 2

    .line 350
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAeAfLockSupport:Z

    return-void
.end method

.method public setAodModeSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mAodModeSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setBothCameraSupport(Z)V
    .registers 2

    .line 354
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mBothCameraSupport:Z

    return-void
.end method

.method public setCameraZoomList(Ljava/util/List;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mZoomInfoList:Ljava/util/List;

    return-void
.end method

.method public setFlipModeInteractiveSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipModeInteractiveSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setFlipModeSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipModeSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setFlipModeSupportAlgos([I)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipModeSupportAlgos:[I

    return-void
.end method

.method public setFlipOptionSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipOptionSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setFlipPopSettingDownUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipPopSettingDownUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setFlipPopSettingTopUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipPopSettingTopUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setFlipWideCameraSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFlipWideCameraSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setFrontWideCameraSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mFrontWideCameraSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setInstantZoomList(Ljava/util/List;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mInstantZoomList:Ljava/util/List;

    return-void
.end method

.method public setLeftTopBarSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mLeftTopBarSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setMasterGuideUIBean(Ljava/util/List;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mMasterGuideUIBean:Ljava/util/List;

    return-void
.end method

.method public setModeGuideLayoutIdList(Ljava/util/List;)V
    .registers 2

    .line 301
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeGuideLayoutIdList:Ljava/util/List;

    return-void
.end method

.method public setModeInteractiveSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeInteractiveSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setModeOffsetPadding(I)V
    .registers 2

    .line 325
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeOffsetPadding:I

    return-void
.end method

.method public setModeSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setModeSupportAlgos([I)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mModeSupportAlgos:[I

    return-void
.end method

.method public setOptionSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mOptionSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setPopSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mPopSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setPreferenceSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mPreferenceSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setRightTopBarSettingUIEntries([Ljava/lang/String;)V
    .registers 5

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mRightTopBarSettingUIEntries:[Ljava/lang/String;

    .line 137
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p0, :cond_15

    .line 138
    aget-object v1, p1, v0

    .line 139
    aget-object v2, p1, p0

    aput-object v2, p1, v0

    .line 140
    aput-object v1, p1, p0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method public setSecondDefautZoomValue(I)V
    .registers 2

    .line 382
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultSecondZoomValue:I

    return-void
.end method

.method public setSettingGuideLayoutIdList([Ljava/lang/String;)V
    .registers 2

    .line 309
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSettingGuideLayoutIdList:[Ljava/lang/String;

    return-void
.end method

.method public setSupportAuxPreview(Z)V
    .registers 2

    .line 333
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportAuxPreview:Z

    return-void
.end method

.method public setSupportChangeFlashWhenRecording(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mSupportChangeFlashWhenRecording:Z

    return-void
.end method

.method public setSupportFrontWideCamera(Z)V
    .registers 2

    .line 281
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportFrontWideCamera:Z

    return-void
.end method

.method public setSupportMacroCamera(Z)V
    .registers 2

    .line 273
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportMacroCamera:Z

    return-void
.end method

.method public setSupportPreviewHoverForm(Z)V
    .registers 2

    .line 374
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportPreviewHoverForm:Z

    return-void
.end method

.method public setSupportSat(Z)V
    .registers 2

    .line 317
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSat:Z

    return-void
.end method

.method public setSupportShare(Z)V
    .registers 2

    .line 370
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportShare:Z

    return-void
.end method

.method public setSupportSlavePreview(Z)V
    .registers 2

    .line 341
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportSlavePreview:Z

    return-void
.end method

.method public setSupportTeleCamera(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportTeleCamera:Z

    return-void
.end method

.method public setSupportVideoCamera(Z)V
    .registers 2

    .line 289
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportVideoCamera:Z

    return-void
.end method

.method public setSupportWideCamera(Z)V
    .registers 2

    .line 265
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mIsSupportWideCamera:Z

    return-void
.end method

.method public setTeleSecondDefaultZoomValue(I)V
    .registers 2

    .line 386
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mDefaultTeleSecondZoomValue:I

    return-void
.end method

.method public setTopBarSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mTopBarSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setWideCameraSettingUIEntries([Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mWideCameraSettingUIEntries:[Ljava/lang/String;

    return-void
.end method

.method public setZoomItemType(I)V
    .registers 2

    .line 398
    iput p1, p0, Lcom/transsion/camera/app/common/ModeSettingUISpec;->mZoomItemType:I

    return-void
.end method
