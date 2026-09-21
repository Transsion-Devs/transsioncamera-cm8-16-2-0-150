.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNDERWATER_VIDEO_MODE_KEY:Ljava/lang/String;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 23
    const-class v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoRestriction;->UNDERWATER_VIDEO_MODE_KEY:Ljava/lang/String;

    .line 25
    new-instance v1, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_setting_quick_preview,key_self_timer,key_volume_key,key_screen_flash,key_location,key_eye_detection,key_face_detection,key_auto_watermark, key_flash, key_flash_facade,key_video_asd,key_video_quality,key_anti_video,,key_cam_mode"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v0, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_setting_quick_preview"

    const-string v3, "false"

    .line 39
    invoke-virtual {v2, v0, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 40
    const-string v2, "key_self_timer"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_volume_key"

    const-string v4, "Shutter"

    .line 41
    invoke-virtual {v0, v2, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_screen_flash"

    .line 42
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_location"

    .line 43
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_eye_detection"

    .line 44
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_face_detection"

    .line 45
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_auto_watermark"

    .line 46
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_video_asd"

    .line 47
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    const-string v2, "key_anti_video"

    .line 48
    invoke-virtual {v0, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 4

    .line 53
    sget-object v0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 54
    const-string v1, "key_flash"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "key_flash_facade"

    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    .line 56
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v3, "key_video_quality"

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "key_cam_mode"

    const-string/jumbo v2, "val_underwater_video"

    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
