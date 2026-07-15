declare module '@apiverve/coordinatesaresea' {
  export interface coordinatesareseaOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface coordinatesareseaResponse {
    status: string;
    error: string | null;
    data: CoordinatesAreSeaData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CoordinatesAreSeaData {
      latitude:  number | null;
      longitude: number | null;
      isSea:     boolean | null;
  }

  export default class coordinatesareseaWrapper {
    constructor(options: coordinatesareseaOptions);

    execute(callback: (error: any, data: coordinatesareseaResponse | null) => void): Promise<coordinatesareseaResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: coordinatesareseaResponse | null) => void): Promise<coordinatesareseaResponse>;
    execute(query?: Record<string, any>): Promise<coordinatesareseaResponse>;
  }
}
