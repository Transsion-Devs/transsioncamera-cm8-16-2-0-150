.class Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 25
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->mRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_auto_watermark"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_algorithm_migrate,key_video_filter,key_video_effect,key_video_frame"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "on"

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v4, "key_algorithm_migrate"

    const-string v5, "off,on"

    invoke-virtual {v2, v4, v3, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 36
    const-string v6, "key_video_filter"

    const-string v7, "off"

    invoke-virtual {v2, v6, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 37
    const-string v8, "key_video_effect"

    invoke-virtual {v2, v8, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 38
    const-string v9, "key_video_frame"

    invoke-virtual {v2, v9, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v1, v7}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2, v4, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 45
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->mRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->mRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_video_filter,key_video_effect,key_video_frame"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->mRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2, v6, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v8, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v9, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .registers 1

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getVSSRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .registers 1

    .line 66
    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkRestriction;->mRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
