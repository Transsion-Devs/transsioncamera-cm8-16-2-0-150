.class public Lcom/transsion/camera/utils/SettingInfo$Area;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 3

    const/4 v0, 0x1

    .line 3141
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/utils/SettingInfo$Area;-><init>(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .registers 3

    .line 3144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3145
    iput-object p1, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    .line 3146
    iput p2, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->weight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 3151
    instance-of v0, p1, Lcom/transsion/camera/utils/SettingInfo$Area;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3154
    :cond_6
    check-cast p1, Lcom/transsion/camera/utils/SettingInfo$Area;

    .line 3155
    iget-object v0, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_11

    .line 3156
    iget-object v0, p1, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    return v1

    .line 3160
    :cond_11
    iget-object v2, p1, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v1

    .line 3164
    :cond_1a
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->weight:I

    iget p1, p1, Lcom/transsion/camera/utils/SettingInfo$Area;->weight:I

    if-ne p0, p1, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_11

    const-string v1, "NULL"

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Weight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$Area;->weight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
