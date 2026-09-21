.class public Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CAMERA_ZOOM_VALUE:Ljava/lang/String;

.field private static final CAMERA_ZOOM_VALUE_2X:Ljava/lang/String; = "200"

.field private static final KEY_ASD:Ljava/lang/String; = "key_asd"

.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final KEY_FLASH_FACADE:Ljava/lang/String; = "key_flash_facade"

.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_PMASTER_MODE:Ljava/lang/String;

.field static final VALUE_ON:Ljava/lang/String; = "on"

.field private static sFaceAttributeRelationBackDualCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sFaceAttributeRelationBackSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sFaceAttributeRelationFrontSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 15
    const-class v0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->KEY_PMASTER_MODE:Ljava/lang/String;

    .line 21
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->CAMERA_ZOOM_VALUE:Ljava/lang/String;

    .line 24
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 25
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 26
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationFrontSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 27
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackDualCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 31
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr,key_distortion_correction"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v4, "key_hdr"

    const-string v5, "off"

    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    const-string v6, "key_distortion_correction"

    .line 36
    invoke-virtual {v2, v6, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 41
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 50
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationFrontSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationFrontSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_face_detection,key_asd,key_flash,key_flash_facade"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationFrontSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v4, "key_face_detection"

    const-string v5, "gender_indentification"

    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 54
    const-string v6, "key_asd"

    const-string v7, "auto"

    invoke-virtual {v2, v6, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 59
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackDualCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackDualCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_face_detection,key_volume_key,key_flash,key_flash_facade,key_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 61
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackDualCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 63
    const-string v8, "key_volume_key"

    const-string v9, "Shutter"

    invoke-virtual {v2, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v6, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 69
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_face_detection,key_volume_key,key_asd,key_flash,key_flash_facade"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v6, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFaceAttributeRelation(ZZ)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .registers 2

    if-eqz p0, :cond_a

    if-eqz p1, :cond_7

    .line 93
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackDualCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0

    :cond_7
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationBackSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0

    :cond_a
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sFaceAttributeRelationFrontSingleCam:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0
.end method

.method public static getRelation(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .registers 1

    if-eqz p0, :cond_5

    .line 86
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterModeRestriction;->sNotSupportHDR:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
