.class public Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cartoon_type:I

.field private description:Ljava/lang/String;

.field private duration:J

.field private material_id:Ljava/lang/String;

.field private relation_video_group:Ljava/lang/String;

.field private targetEndTime:Ljava/lang/Double;

.field private targetStartTime:Ljava/lang/Double;

.field private video_height:I

.field private video_width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCartoon_type()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->cartoon_type:I

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    .line 62
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->duration:J

    return-wide v0
.end method

.method public getMaterial_id()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->material_id:Ljava/lang/String;

    return-object p0
.end method

.method public getRelation_video_group()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->relation_video_group:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetEndTime()Ljava/lang/Double;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->targetEndTime:Ljava/lang/Double;

    return-object p0
.end method

.method public getTargetStartTime()Ljava/lang/Double;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->targetStartTime:Ljava/lang/Double;

    return-object p0
.end method

.method public getVideo_height()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->video_height:I

    return p0
.end method

.method public getVideo_width()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->video_width:I

    return p0
.end method

.method public setCartoon_type(I)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->cartoon_type:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    .line 66
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->duration:J

    return-void
.end method

.method public setMaterial_id(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->material_id:Ljava/lang/String;

    return-void
.end method

.method public setRelation_video_group(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->relation_video_group:Ljava/lang/String;

    return-void
.end method

.method public setTargetEndTime(Ljava/lang/Double;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->targetEndTime:Ljava/lang/Double;

    return-void
.end method

.method public setTargetStartTime(Ljava/lang/Double;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->targetStartTime:Ljava/lang/Double;

    return-void
.end method

.method public setVideo_height(I)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->video_height:I

    return-void
.end method

.method public setVideo_width(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/bean/TemplateExtraData;->video_width:I

    return-void
.end method
