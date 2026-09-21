.class public Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

.field private final mFaceAttributeSupport:Z

.field private mGender:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SlimBodyHelper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getFaceAttributeSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mFaceAttributeSupport:Z

    .line 44
    const-string v0, "1"

    .line 45
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "key_gender_attribute_value"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "key_mu_slimbody_custom"

    .line 49
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p1, v1, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 51
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    return-void
.end method

.method private getDefaultSlimBodySetting()Ljava/lang/String;
    .registers 3

    .line 73
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mFaceAttributeSupport:Z

    if-eqz v0, :cond_7

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    goto :goto_9

    .line 75
    :cond_7
    const-string v0, "0"

    .line 76
    :goto_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getDefaultSlimBodyItemInfo(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProcessInternal()I
    .registers 2

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    packed-switch v0, :pswitch_data_2c

    const/16 p0, 0x64

    return p0

    .line 186
    :pswitch_a
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    return p0

    .line 183
    :pswitch_d
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    return p0

    .line 180
    :pswitch_10
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    return p0

    .line 177
    :pswitch_13
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    return p0

    .line 174
    :pswitch_16
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    return p0

    .line 171
    :pswitch_19
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    return p0

    .line 168
    :pswitch_1c
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    return p0

    .line 165
    :pswitch_1f
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    return p0

    .line 162
    :pswitch_22
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    return p0

    .line 159
    :pswitch_25
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    return p0

    .line 156
    :pswitch_28
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    return p0

    nop

    :pswitch_data_2c
    .packed-switch 0x3
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method private updateProcessInternal(I)V
    .registers 3

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    packed-switch v0, :pswitch_data_2a

    return-void

    .line 132
    :pswitch_8
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    return-void

    .line 129
    :pswitch_b
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    return-void

    .line 126
    :pswitch_e
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    return-void

    .line 123
    :pswitch_11
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    return-void

    .line 120
    :pswitch_14
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    return-void

    .line 117
    :pswitch_17
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    return-void

    .line 114
    :pswitch_1a
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    return-void

    .line 111
    :pswitch_1d
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    return-void

    .line 108
    :pswitch_20
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    return-void

    .line 105
    :pswitch_23
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    return-void

    .line 102
    :pswitch_26
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public defaultCustom()Z
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    if-ne v1, v2, :cond_30

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    if-ne v1, v2, :cond_30

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    if-ne v1, v2, :cond_30

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    if-ne v1, v2, :cond_30

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    if-ne v1, v2, :cond_30

    iget v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    iget v2, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    if-ne v1, v2, :cond_30

    iget v0, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    if-ne v0, p0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public getFeatureId()I
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    return p0
.end method

.method public getProgress(I)I
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iput p1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getProcessInternal()I

    move-result p0

    return p0
.end method

.method public restoreDefault(I)Ljava/lang/String;
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 139
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    .line 140
    iput p1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 141
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 143
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    const-string v2, "key_mu_slimbody_custom"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mGender:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->getDefaultSlimBodySetting()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDefaultItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    :cond_14
    return-void
.end method

.method public updateFeatureId(I)Ljava/lang/String;
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    iput p1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 85
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 87
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    const-string v2, "key_mu_slimbody_custom"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method public updateProgress(I)Ljava/lang/String;
    .registers 5

    .line 92
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->updateProcessInternal(I)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mCustomItemInfo:Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/helper/SlimBodyHelper;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 95
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    const-string v2, "key_mu_slimbody_custom"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method
