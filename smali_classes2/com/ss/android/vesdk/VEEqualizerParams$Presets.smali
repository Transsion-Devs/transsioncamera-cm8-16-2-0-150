.class public Lcom/ss/android/vesdk/VEEqualizerParams$Presets;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEqualizerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Presets"
.end annotation


# static fields
.field public static final CLASSICAL:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final CLUB:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final DANCE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final FLAT:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final FULLBASS:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final FULLBASSTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final FULLTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final HEADPHONES:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final LARGEHALL:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final LIVE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final NONE:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final PARTY:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final POP:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final ROCK:Lcom/ss/android/vesdk/VEEqualizerParams;

.field public static final SOFT:Lcom/ss/android/vesdk/VEEqualizerParams;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    .line 222
    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->NONE:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 223
    new-instance v1, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v1, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FLAT:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 224
    new-instance v2, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v13, -0x3ee66666    # -9.6f

    const/4 v14, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    const v10, -0x3f19999a    # -7.2f

    const v11, -0x3f19999a    # -7.2f

    const v12, -0x3f19999a    # -7.2f

    invoke-direct/range {v2 .. v14}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v2, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->CLASSICAL:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 225
    new-instance v3, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v7, 0x41000000    # 8.0f

    const v8, 0x40b33333    # 5.6f

    const v9, 0x40b33333    # 5.6f

    const v10, 0x40b33333    # 5.6f

    const v11, 0x404ccccd    # 3.2f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v15}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v3, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->CLUB:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 226
    new-instance v4, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const v6, 0x4119999a    # 9.6f

    const v7, 0x40e66666    # 7.2f

    const v8, 0x4019999a    # 2.4f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, -0x3f4ccccd    # -5.6f

    const v12, -0x3f19999a    # -7.2f

    const v13, -0x3f19999a    # -7.2f

    invoke-direct/range {v4 .. v16}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v4, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->DANCE:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 227
    new-instance v5, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v16, -0x3ecccccd    # -11.2f

    const/16 v17, 0x0

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, -0x3f000000    # -8.0f

    const v8, 0x4119999a    # 9.6f

    const v9, 0x4119999a    # 9.6f

    const v10, 0x40b33333    # 5.6f

    const v11, 0x3fcccccd    # 1.6f

    const/high16 v12, -0x3f800000    # -4.0f

    const/high16 v13, -0x3f000000    # -8.0f

    const v14, -0x3ed9999a    # -10.4f

    const v15, -0x3ecccccd    # -11.2f

    invoke-direct/range {v5 .. v17}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v5, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLBASS:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 228
    new-instance v6, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v17, 0x41400000    # 12.0f

    const/16 v18, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    const v8, 0x40e66666    # 7.2f

    const v9, 0x40b33333    # 5.6f

    const/4 v10, 0x0

    const v11, -0x3f19999a    # -7.2f

    const v12, -0x3f666666    # -4.8f

    const v13, 0x3fcccccd    # 1.6f

    const/high16 v14, 0x41000000    # 8.0f

    const v15, 0x41333333    # 11.2f

    const/high16 v16, 0x41400000    # 12.0f

    invoke-direct/range {v6 .. v18}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v6, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLBASSTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 229
    new-instance v7, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v18, 0x41866666    # 16.8f

    const/16 v19, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    const v9, -0x3ee66666    # -9.6f

    const v10, -0x3ee66666    # -9.6f

    const v11, -0x3ee66666    # -9.6f

    const/high16 v12, -0x3f800000    # -4.0f

    const v13, 0x4019999a    # 2.4f

    const v14, 0x41333333    # 11.2f

    const/high16 v15, 0x41800000    # 16.0f

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x41800000    # 16.0f

    invoke-direct/range {v7 .. v19}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v7, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 230
    new-instance v8, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v19, 0x41666666    # 14.4f

    const/16 v20, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    const v10, 0x4099999a    # 4.8f

    const v11, 0x41333333    # 11.2f

    const v12, 0x40b33333    # 5.6f

    const v13, -0x3fb33333    # -3.2f

    const v14, -0x3fe66666    # -2.4f

    const v15, 0x3fcccccd    # 1.6f

    const v16, 0x4099999a    # 4.8f

    const v17, 0x4119999a    # 9.6f

    const v18, 0x414ccccd    # 12.8f

    invoke-direct/range {v8 .. v20}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v8, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->HEADPHONES:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 231
    new-instance v9, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    const v11, 0x41266666    # 10.4f

    const v12, 0x41266666    # 10.4f

    const v13, 0x40b33333    # 5.6f

    const v14, 0x40b33333    # 5.6f

    const/4 v15, 0x0

    const v16, -0x3f666666    # -4.8f

    const v17, -0x3f666666    # -4.8f

    const v18, -0x3f666666    # -4.8f

    const/16 v19, 0x0

    invoke-direct/range {v9 .. v21}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v9, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->LARGEHALL:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 232
    new-instance v10, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v21, 0x4019999a    # 2.4f

    const/16 v22, 0x0

    const/high16 v11, 0x40e00000    # 7.0f

    const v12, -0x3f666666    # -4.8f

    const/4 v13, 0x0

    const/high16 v14, 0x40800000    # 4.0f

    const v15, 0x40b33333    # 5.6f

    const v16, 0x40b33333    # 5.6f

    const v17, 0x40b33333    # 5.6f

    const/high16 v18, 0x40800000    # 4.0f

    const v19, 0x4019999a    # 2.4f

    const v20, 0x4019999a    # 2.4f

    invoke-direct/range {v10 .. v22}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v10, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->LIVE:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 233
    new-instance v11, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v22, 0x40e66666    # 7.2f

    const/16 v23, 0x0

    const/high16 v12, 0x40c00000    # 6.0f

    const v13, 0x40e66666    # 7.2f

    const v14, 0x40e66666    # 7.2f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0x40e66666    # 7.2f

    invoke-direct/range {v11 .. v23}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v11, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->PARTY:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 234
    new-instance v12, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v23, -0x40333333    # -1.6f

    const/16 v24, 0x0

    const/high16 v13, 0x40c00000    # 6.0f

    const v14, -0x40333333    # -1.6f

    const v15, 0x4099999a    # 4.8f

    const v16, 0x40e66666    # 7.2f

    const/high16 v17, 0x41000000    # 8.0f

    const v18, 0x40b33333    # 5.6f

    const v20, -0x3fe66666    # -2.4f

    const v21, -0x3fe66666    # -2.4f

    const v22, -0x40333333    # -1.6f

    invoke-direct/range {v12 .. v24}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v12, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->POP:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 235
    new-instance v13, Lcom/ss/android/vesdk/VEEqualizerParams;

    const v24, 0x41333333    # 11.2f

    const/16 v25, 0x0

    const/high16 v14, 0x40a00000    # 5.0f

    const/high16 v15, 0x41000000    # 8.0f

    const v16, 0x4099999a    # 4.8f

    const v17, -0x3f4ccccd    # -5.6f

    const/high16 v18, -0x3f000000    # -8.0f

    const v19, -0x3fb33333    # -3.2f

    const/high16 v20, 0x40800000    # 4.0f

    const v21, 0x410ccccd    # 8.8f

    const v22, 0x41333333    # 11.2f

    const v23, 0x41333333    # 11.2f

    invoke-direct/range {v13 .. v25}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v13, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->ROCK:Lcom/ss/android/vesdk/VEEqualizerParams;

    .line 236
    new-instance v0, Lcom/ss/android/vesdk/VEEqualizerParams;

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v12, 0x0

    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x4099999a    # 4.8f

    const v3, 0x3fcccccd    # 1.6f

    const/4 v4, 0x0

    const v5, -0x3fe66666    # -2.4f

    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x41000000    # 8.0f

    const v9, 0x4119999a    # 9.6f

    const v10, 0x41333333    # 11.2f

    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/VEEqualizerParams;-><init>(FFFFFFFFFFFLcom/ss/android/vesdk/VEEqualizerParams$1;)V

    sput-object v0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->SOFT:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromValue(I)Lcom/ss/android/vesdk/VEEqualizerParams;
    .registers 1

    packed-switch p0, :pswitch_data_30

    .line 275
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->NONE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 273
    :pswitch_6
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->SOFT:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 271
    :pswitch_9
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->ROCK:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 269
    :pswitch_c
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->POP:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 267
    :pswitch_f
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->PARTY:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 265
    :pswitch_12
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->LIVE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 263
    :pswitch_15
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->LARGEHALL:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 261
    :pswitch_18
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->HEADPHONES:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 259
    :pswitch_1b
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 257
    :pswitch_1e
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLBASSTREBLE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 255
    :pswitch_21
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FULLBASS:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 253
    :pswitch_24
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->DANCE:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 251
    :pswitch_27
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->CLUB:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 249
    :pswitch_2a
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->CLASSICAL:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    .line 247
    :pswitch_2d
    sget-object p0, Lcom/ss/android/vesdk/VEEqualizerParams$Presets;->FLAT:Lcom/ss/android/vesdk/VEEqualizerParams;

    return-object p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
