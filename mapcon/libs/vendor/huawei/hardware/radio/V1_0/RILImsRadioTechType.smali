.class public final Lvendor/huawei/hardware/radio/V1_0/RILImsRadioTechType;
.super Ljava/lang/Object;
.source "RILImsRadioTechType.java"


# static fields
.field public static final IMS_RADIO_TECH_TYPE_1X_RTT:I = 0x6

.field public static final IMS_RADIO_TECH_TYPE_EDGE:I = 0x2

.field public static final IMS_RADIO_TECH_TYPE_EHRPD:I = 0xd

.field public static final IMS_RADIO_TECH_TYPE_EVDO_0:I = 0x7

.field public static final IMS_RADIO_TECH_TYPE_EVDO_A:I = 0x8

.field public static final IMS_RADIO_TECH_TYPE_EVDO_B:I = 0xc

.field public static final IMS_RADIO_TECH_TYPE_GPRS:I = 0x1

.field public static final IMS_RADIO_TECH_TYPE_GSM:I = 0x10

.field public static final IMS_RADIO_TECH_TYPE_HSDPA:I = 0x9

.field public static final IMS_RADIO_TECH_TYPE_HSPA:I = 0xb

.field public static final IMS_RADIO_TECH_TYPE_HSPAP:I = 0xf

.field public static final IMS_RADIO_TECH_TYPE_HSUPA:I = 0xa

.field public static final IMS_RADIO_TECH_TYPE_IS95A:I = 0x4

.field public static final IMS_RADIO_TECH_TYPE_IS95B:I = 0x5

.field public static final IMS_RADIO_TECH_TYPE_IWLAN:I = 0x13

.field public static final IMS_RADIO_TECH_TYPE_LTE:I = 0xe

.field public static final IMS_RADIO_TECH_TYPE_TD_SCDMA:I = 0x11

.field public static final IMS_RADIO_TECH_TYPE_UMTS:I = 0x3

.field public static final IMS_RADIO_TECH_TYPE_UNKNOW:I = 0x0

.field public static final IMS_RADIO_TECH_TYPE_WIFI:I = 0x12

.field public static final IMS_RAIDO_THCH_TYPE_ANY:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .prologue
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 96
    .local v0, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 97
    const-string/jumbo v2, "IMS_RAIDO_THCH_TYPE_ANY"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    const/4 v0, -0x1

    .line 100
    :cond_12
    and-int/lit8 v2, p0, 0x0

    if-nez v2, :cond_1e

    .line 101
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_UNKNOW"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v0, v0, 0x0

    .line 104
    :cond_1e
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 105
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_GPRS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v0, v0, 0x1

    .line 108
    :cond_2b
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_38

    .line 109
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_EDGE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v0, v0, 0x2

    .line 112
    :cond_38
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_45

    .line 113
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_UMTS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v0, v0, 0x3

    .line 116
    :cond_45
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_52

    .line 117
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_IS95A"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v0, v0, 0x4

    .line 120
    :cond_52
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5f

    .line 121
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_IS95B"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v0, v0, 0x5

    .line 124
    :cond_5f
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6c

    .line 125
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_1X_RTT"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v0, v0, 0x6

    .line 128
    :cond_6c
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_79

    .line 129
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_EVDO_0"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit8 v0, v0, 0x7

    .line 132
    :cond_79
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_87

    .line 133
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_EVDO_A"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit8 v0, v0, 0x8

    .line 136
    :cond_87
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_95

    .line 137
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_HSDPA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit8 v0, v0, 0x9

    .line 140
    :cond_95
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_a3

    .line 141
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_HSUPA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit8 v0, v0, 0xa

    .line 144
    :cond_a3
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b1

    .line 145
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_HSPA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit8 v0, v0, 0xb

    .line 148
    :cond_b1
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_bf

    .line 149
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_EVDO_B"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit8 v0, v0, 0xc

    .line 152
    :cond_bf
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_cd

    .line 153
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_EHRPD"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit8 v0, v0, 0xd

    .line 156
    :cond_cd
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_db

    .line 157
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_LTE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit8 v0, v0, 0xe

    .line 160
    :cond_db
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e9

    .line 161
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_HSPAP"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    or-int/lit8 v0, v0, 0xf

    .line 164
    :cond_e9
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f7

    .line 165
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_GSM"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    or-int/lit8 v0, v0, 0x10

    .line 168
    :cond_f7
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_105

    .line 169
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_TD_SCDMA"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    or-int/lit8 v0, v0, 0x11

    .line 172
    :cond_105
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_113

    .line 173
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_WIFI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    or-int/lit8 v0, v0, 0x12

    .line 176
    :cond_113
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_121

    .line 177
    const-string/jumbo v2, "IMS_RADIO_TECH_TYPE_IWLAN"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    or-int/lit8 v0, v0, 0x13

    .line 180
    :cond_121
    if-eq p0, v0, :cond_140

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v0

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_140
    const-string/jumbo v2, " | "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .prologue
    .line 27
    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    .line 28
    const-string/jumbo v0, "IMS_RAIDO_THCH_TYPE_ANY"

    return-object v0

    .line 30
    :cond_7
    if-nez p0, :cond_d

    .line 31
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_UNKNOW"

    return-object v0

    .line 33
    :cond_d
    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    .line 34
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_GPRS"

    return-object v0

    .line 36
    :cond_14
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1b

    .line 37
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_EDGE"

    return-object v0

    .line 39
    :cond_1b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_22

    .line 40
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_UMTS"

    return-object v0

    .line 42
    :cond_22
    const/4 v0, 0x4

    if-ne p0, v0, :cond_29

    .line 43
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_IS95A"

    return-object v0

    .line 45
    :cond_29
    const/4 v0, 0x5

    if-ne p0, v0, :cond_30

    .line 46
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_IS95B"

    return-object v0

    .line 48
    :cond_30
    const/4 v0, 0x6

    if-ne p0, v0, :cond_37

    .line 49
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_1X_RTT"

    return-object v0

    .line 51
    :cond_37
    const/4 v0, 0x7

    if-ne p0, v0, :cond_3e

    .line 52
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_EVDO_0"

    return-object v0

    .line 54
    :cond_3e
    const/16 v0, 0x8

    if-ne p0, v0, :cond_46

    .line 55
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_EVDO_A"

    return-object v0

    .line 57
    :cond_46
    const/16 v0, 0x9

    if-ne p0, v0, :cond_4e

    .line 58
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_HSDPA"

    return-object v0

    .line 60
    :cond_4e
    const/16 v0, 0xa

    if-ne p0, v0, :cond_56

    .line 61
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_HSUPA"

    return-object v0

    .line 63
    :cond_56
    const/16 v0, 0xb

    if-ne p0, v0, :cond_5e

    .line 64
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_HSPA"

    return-object v0

    .line 66
    :cond_5e
    const/16 v0, 0xc

    if-ne p0, v0, :cond_66

    .line 67
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_EVDO_B"

    return-object v0

    .line 69
    :cond_66
    const/16 v0, 0xd

    if-ne p0, v0, :cond_6e

    .line 70
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_EHRPD"

    return-object v0

    .line 72
    :cond_6e
    const/16 v0, 0xe

    if-ne p0, v0, :cond_76

    .line 73
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_LTE"

    return-object v0

    .line 75
    :cond_76
    const/16 v0, 0xf

    if-ne p0, v0, :cond_7e

    .line 76
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_HSPAP"

    return-object v0

    .line 78
    :cond_7e
    const/16 v0, 0x10

    if-ne p0, v0, :cond_86

    .line 79
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_GSM"

    return-object v0

    .line 81
    :cond_86
    const/16 v0, 0x11

    if-ne p0, v0, :cond_8e

    .line 82
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_TD_SCDMA"

    return-object v0

    .line 84
    :cond_8e
    const/16 v0, 0x12

    if-ne p0, v0, :cond_96

    .line 85
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_WIFI"

    return-object v0

    .line 87
    :cond_96
    const/16 v0, 0x13

    if-ne p0, v0, :cond_9e

    .line 88
    const-string/jumbo v0, "IMS_RADIO_TECH_TYPE_IWLAN"

    return-object v0

    .line 90
    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
