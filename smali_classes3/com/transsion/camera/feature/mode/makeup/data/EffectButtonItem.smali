.class public Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
.super Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;
.source "SourceFile"


# instance fields
.field private children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private enableMultiSelect:Z

.field private enableNegative:Z

.field private id:I

.field private mCurrentIntensity:I

.field private node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

.field private parent:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private reuseChildrenIntensity:Z

.field private selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field private selected:Z


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 62
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 63
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 81
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 92
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p3, 0x1

    .line 15
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 93
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(IIIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V
    .registers 6

    .line 103
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p3, 0x1

    .line 15
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 104
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 105
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(IIIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;Z)V
    .registers 7

    .line 115
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 116
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 117
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    .line 118
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    return-void
.end method

.method public constructor <init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V
    .registers 6

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 98
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 99
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(IIILcom/transsion/camera/feature/mode/makeup/data/ComposerNode;[F)V
    .registers 6

    const/4 p5, 0x0

    .line 109
    invoke-direct {p0, p3, p2, p5}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 11
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 110
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 111
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(III[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .registers 6

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 86
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 87
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(III[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V
    .registers 7

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>(III)V

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 123
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 124
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 125
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 16
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 67
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 68
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(I[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;Z)V
    .registers 6

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 17
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    .line 73
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    .line 74
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    .line 75
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method private updateChildren()V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_d

    aget-object v3, v0, v2

    .line 146
    iput-object p0, v3, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    return-void
.end method


# virtual methods
.method public currentIntensity()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->mCurrentIntensity:I

    return p0
.end method

.method public currentIntensity(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->mCurrentIntensity:I

    return-void
.end method

.method public defaultIntensity()I
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    const/16 v0, 0x3c

    if-nez p0, :cond_7

    return v0

    .line 41
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getIntensityArray()[F

    move-result-object p0

    if-nez p0, :cond_e

    return v0

    :cond_e
    const/4 v0, 0x1

    .line 45
    aget p0, p0, v0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->floatMultiplication(FI)I

    move-result p0

    return p0
.end method

.method public getAvailableItem()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    return-object p0

    .line 141
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    if-nez p0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object p0

    return-object p0
.end method

.method public getChildren()[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-object p0
.end method

.method public getId()I
    .registers 1

    .line 151
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return p0
.end method

.method public getIntensityArray()[F
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 169
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getIntensityArray()[F

    move-result-object p0

    return-object p0
.end method

.method public getNode()Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-object p0
.end method

.method public getParent()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-object p0
.end method

.method public getSelectChild()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-object p0
.end method

.method public getValidIntensity()[F
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    if-nez v0, :cond_11

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 132
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getIntensityArray()[F

    move-result-object p0

    return-object p0

    .line 134
    :cond_11
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getValidIntensity()[F

    move-result-object p0

    return-object p0
.end method

.method public intensityDefault()Z
    .registers 4

    .line 49
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_6

    return v1

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez v0, :cond_b

    return v1

    .line 55
    :cond_b
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->getIntensityArray()[F

    move-result-object v0

    if-nez v0, :cond_12

    return v1

    .line 59
    :cond_12
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->mCurrentIntensity:I

    aget v0, v0, v1

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->floatMultiplication(FI)I

    move-result v0

    if-ne p0, v0, :cond_1f

    return v1

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public isEnableMultiSelect()Z
    .registers 1

    .line 210
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    return p0
.end method

.method public isEnableNegative()Z
    .registers 1

    .line 186
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    return p0
.end method

.method public isReuseChildrenIntensity()Z
    .registers 1

    .line 218
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    return p0
.end method

.method public isSelected()Z
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public setChildren([Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-void
.end method

.method public setEnableMultiSelect(Z)V
    .registers 2

    .line 214
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableMultiSelect:Z

    return-void
.end method

.method public setEnableNegative(Z)V
    .registers 2

    .line 190
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->enableNegative:Z

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->id:I

    return-void
.end method

.method public setIntensityArray([F)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    if-nez p0, :cond_5

    return-void

    .line 174
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;->setIntensityArray([F)V

    return-void
.end method

.method public setNode(Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/makeup/data/ComposerNode;

    return-void
.end method

.method public setParent(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-void
.end method

.method public setReuseChildrenIntensity(Z)V
    .registers 2

    .line 222
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->reuseChildrenIntensity:Z

    return-void
.end method

.method public setSelectChild(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->selected:Z

    return-void
.end method
