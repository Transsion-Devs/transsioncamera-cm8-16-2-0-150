.class public Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FB_VALUE:Ljava/lang/String; = "supernight"

.field private static final KEY_MODE:Ljava/lang/String;

.field private static final KEY_NIGHT_SWITCH:Ljava/lang/String; = "SuperNight-Switch"

.field private static final KEY_STABLE_NIGHT_SWITCH:Ljava/lang/String; = "StableNight-Switch"

.field private static final SWITCH_OFF:Ljava/lang/String; = "off"

.field private static final SWITCH_ON:Ljava/lang/String; = "on"

.field static final VALUE_TORCH_NOT_SUPPORT:Ljava/lang/String; = "torch_not_support"

.field static final VALUE_TORCH_SUPPORT:Ljava/lang/String; = "torch_support"

.field private static sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 20
    const-class v0, Lcom/transsion/camera/feature/mode/supernight/SuperNightModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    .line 29
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 30
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 31
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 32
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 35
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 36
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr,key_flash,key_flash_facade,key_setting_smart_denoise,key_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string/jumbo v3, "torch_not_support"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v4, "key_flash"

    const-string v5, "off"

    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 41
    const-string v6, "key_flash_facade"

    const-string v7, "off,ringscreenlight"

    invoke-virtual {v2, v6, v5, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 43
    const-string v8, "key_setting_smart_denoise"

    const-string v9, "on"

    invoke-virtual {v2, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 45
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string/jumbo v10, "torch_support"

    invoke-direct {v2, v0, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v11, "off,torch"

    invoke-virtual {v2, v4, v5, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 49
    const-string v12, "off,torch,ringscreenlight"

    invoke-virtual {v2, v6, v5, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 54
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_hdr,key_flash,key_flash_facade,key_face_beauty,key_setting_smart_denoise,key_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2, v4, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v6, v5, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 62
    const-string v3, "key_face_beauty"

    const-string v7, "supernight"

    invoke-virtual {v2, v3, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 65
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v0, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v4, v5, v11}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v6, v5, v12}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 71
    invoke-virtual {v2, v3, v7, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 72
    invoke-virtual {v2, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 75
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_super_night,key_setting_smart_denoise,key_asd"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v4, "SuperNight-Switch"

    invoke-direct {v3, v4, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v6, "key_super_night"

    const-string v7, "Night"

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v7, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 80
    invoke-virtual {v3, v8, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 78
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 82
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v3, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, "None"

    invoke-virtual {v3, v6, v4, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 84
    invoke-virtual {v3, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 87
    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v2, "StableNight-Switch"

    invoke-direct {v1, v2, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Stable"

    .line 91
    invoke-virtual {v1, v6, v3, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v8, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 94
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v1, v2, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, v6, v4, v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v8, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 137
    new-instance v0, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v1, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v0, v1, v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_cam_mode"

    const-string/jumbo v2, "val_super_night"

    .line 138
    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    return-object v0
.end method

.method public static getNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 129
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    if-eqz p0, :cond_7

    const-string p0, "on"

    goto :goto_9

    :cond_7
    const-string p0, "off"

    :goto_9
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method

.method public static getRelation(ZZLjava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 7

    if-eqz p0, :cond_5

    .line 110
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sFaceBeautyRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 111
    :goto_7
    const-string v0, "key_flash_facade"

    const-string v1, "key_flash"

    const/4 v2, 0x1

    const-string v3, "off,torch"

    if-eqz p1, :cond_20

    .line 112
    const-string/jumbo p1, "torch_support"

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 113
    invoke-virtual {p0, v1, p2, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string p1, "off,auto,torch,ringscreenlight"

    invoke-virtual {p0, v0, p2, p1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 119
    :cond_20
    const-string/jumbo p1, "torch_not_support"

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 120
    const-string p1, "off"

    invoke-virtual {p0, v1, p1, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0, p2, v3}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .registers 1

    .line 106
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getStableNightRelation(Z)Lcom/transsion/camera/app/common/relation/Relation;
    .registers 3

    .line 133
    sget-object v0, Lcom/transsion/camera/feature/mode/supernight/ModeRestriction;->sStableNightRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    if-eqz p0, :cond_7

    const-string p0, "on"

    goto :goto_9

    :cond_7
    const-string p0, "off"

    :goto_9
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    return-object p0
.end method
