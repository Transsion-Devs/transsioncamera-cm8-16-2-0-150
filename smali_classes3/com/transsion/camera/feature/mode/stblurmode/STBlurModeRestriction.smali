.class Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field private static final KEY_FLASH_FACADE:Ljava/lang/String; = "key_flash_facade"

.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_STBLUR_MODE:Ljava/lang/String;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 20
    const-class v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    .line 26
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 27
    new-instance v2, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v2, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 30
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 31
    const-string v3, "key_hdr"

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 32
    const-string v4, "key_flash"

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 33
    const-string v5, "key_flash_facade"

    invoke-virtual {v1, v5}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 34
    new-instance v6, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v7, "on"

    invoke-direct {v6, v0, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v8, "off"

    invoke-virtual {v6, v3, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v6

    .line 37
    invoke-virtual {v6, v4, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    .line 38
    invoke-virtual {v4, v5, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v4

    .line 39
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v4

    .line 34
    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 41
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v0, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1, v3, v8, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 63
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->KEY_STBLUR_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string/jumbo v2, "val_stb_blur"

    .line 64
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;
    .registers 3

    if-eqz p0, :cond_5

    .line 55
    sget-object p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelationWithFlash:Lcom/transsion/camera/app/common/relation/RelationGroup;

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 56
    :goto_7
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeHDRSupport:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->judgeMemory()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_21

    .line 57
    :cond_1c
    const-string v0, "key_hdr"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->removeBodyKey(Ljava/lang/String;)V

    :cond_21
    return-object p0
.end method
