.class public Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;
.super Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;
.source "SourceFile"


# instance fields
.field private children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

.field private enableMultiSelect:Z

.field private enableNegative:Z

.field private id:I

.field private node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

.field private parent:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

.field private reuseChildrenIntensity:Z

.field private selectChild:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

.field private selected:Z


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 26
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>(III)V

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 44
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .line 55
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 p3, 0x1

    .line 13
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 56
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    return-void
.end method

.method public constructor <init>(IIIILcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;)V
    .registers 6

    .line 66
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 p3, 0x1

    .line 13
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 67
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    .line 68
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(IIIILcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;Z)V
    .registers 7

    .line 78
    invoke-direct {p0, p3, p2, p4}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>(III)V

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    .line 80
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    .line 81
    iput-boolean p6, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    return-void
.end method

.method public constructor <init>(IIILcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;)V
    .registers 6

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>(III)V

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 61
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    .line 62
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(IIILcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;[F)V
    .registers 6

    const/4 p5, 0x0

    .line 72
    invoke-direct {p0, p3, p2, p5}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>(III)V

    .line 9
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 73
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    .line 74
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    return-void
.end method

.method public constructor <init>(III[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 6

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>(III)V

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 49
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    .line 50
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(III[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Z)V
    .registers 7

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p3, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>(III)V

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 86
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    .line 87
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 88
    iput-boolean p5, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 89
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(I[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 5

    .line 29
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 14
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method public constructor <init>(I[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Z)V
    .registers 6

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/ButtonItem;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    .line 15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    .line 36
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    .line 37
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    .line 38
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->updateChildren()V

    return-void
.end method

.method private updateChildren()V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_d

    aget-object v3, v0, v2

    .line 109
    iput-object p0, v3, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    return-void
.end method


# virtual methods
.method public getAvailableItem()Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    return-object p0

    .line 104
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    if-nez p0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object p0

    return-object p0
.end method

.method public getChildren()[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-object p0
.end method

.method public getId()I
    .registers 1

    .line 114
    iget p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    return p0
.end method

.method public getIntensityArray()[F
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 132
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getIntensityArray()[F

    move-result-object p0

    return-object p0
.end method

.method public getNode()Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    return-object p0
.end method

.method public getParent()Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-object p0
.end method

.method public getSelectChild()Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-object p0
.end method

.method public getValidIntensity()[F
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    if-nez v0, :cond_11

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    .line 95
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->getIntensityArray()[F

    move-result-object p0

    return-object p0

    .line 97
    :cond_11
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getValidIntensity()[F

    move-result-object p0

    return-object p0
.end method

.method public isEnableMultiSelect()Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    return p0
.end method

.method public isEnableNegative()Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    return p0
.end method

.method public isReuseChildrenIntensity()Z
    .registers 1

    .line 181
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    return p0
.end method

.method public isSelected()Z
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->getAvailableItem()Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    return p0
.end method

.method public setChildren([Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->children:[Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-void
.end method

.method public setEnableMultiSelect(Z)V
    .registers 2

    .line 177
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableMultiSelect:Z

    return-void
.end method

.method public setEnableNegative(Z)V
    .registers 2

    .line 153
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->enableNegative:Z

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 118
    iput p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->id:I

    return-void
.end method

.method public setIntensityArray([F)V
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    if-nez p0, :cond_5

    return-void

    .line 137
    :cond_5
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;->setIntensityArray([F)V

    return-void
.end method

.method public setNode(Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->node:Lcom/transsion/camera/feature/mode/pmaster/data/ComposerNode;

    return-void
.end method

.method public setParent(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->parent:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-void
.end method

.method public setReuseChildrenIntensity(Z)V
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->reuseChildrenIntensity:Z

    return-void
.end method

.method public setSelectChild(Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selectChild:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;->selected:Z

    return-void
.end method
